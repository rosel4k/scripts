repeat task.wait() until game:IsLoaded()
local virtualUser = game:GetService('VirtualUser')
game:GetService('Players').LocalPlayer.Idled:Connect(function()
    virtualUser:CaptureController()
    virtualUser:ClickButton2(Vector2.new())
end)

getgenv().Values = {
    WebhookURL = '',
    WebhookMode = false,
    WebhookTimer = 5,
    GameNotifications = false,
    UserId = '',
    NotifyRarities = {},
}
local V = getgenv().Values

getgenv().EnergyInfo = {
    EnergyText = '',
    CurrentRank = 0,
    NextRank = 0,
    EnergyUntilRank = 0,
    EnergyPerClick = 0,
    EnergyPerSecond = '',
    EnergyPerMinute = '',
    EnergyPerHour = '',
    TimeToRankUp = '',
}
local E = getgenv().EnergyInfo

local HttpService = game:GetService('HttpService')
local TCS = game:GetService('TextChatService')
local WEBHOOK_USERNAME = 'Anime Eternal Notificator'
local WEBHOOK_AVATAR = 'https://i.imgur.com/SX41gmf.png'
local suffixList = {{'UNCENT',1e306},{'CENT',1e303},{'NONONGNTL',1e300},{'OTNONGNTL',1e297},{'SPNONGNTL',1e294},{'SXNONGNTL',1e291},{'QNNONGNTL',1e288},{'QTNONGNTL',1e285},{'TNONGNTL',1e282},{'DNONGNTL',1e279},{'UNONGNTL',1e276},{'NONGNTL',1e273},{'NVOTGNTL',1e270},{'OTOTGNTL',1e267},{'SPOTGNTL',1e264},{'SXOTGNTL',1e261},{'QNOTGNTL',1e258},{'QTOTGNTL',1e255},{'TOTGNTL',1e252},{'DOTGNTL',1e249},{'UOTGNTL',1e246},{'OTGNTL',1e243},{'NVSPTGNTL',1e240},{'OSPTGNTL',1e237},{'SPSPTGNTL',1e234},{'SXSPTGNTL',1e231},{'QNSPTGNTL',1e228},{'QTSPTGNTL',1e225},{'TSPTGNTL',1e222},{'DSPTGNTL',1e219},{'USPTGNTL',1e216},{'SPTGNTL',1e213},{'NVSXGNTL',1e210},{'OSXGNTL',1e207},{'SPSXGNTL',1e204},{'SXSXGNTL',1e201},{'QNSXGNTL',1e198},{'QTSXGNTL',1e195},{'TSXGNTL',1e192},{'DSXGNTL',1e189},{'USXGNTL',1e186},{'SXGNTL',1e183},{'NQQGNT',1e180},{'OQQGNT',1e177},{'SpQGNT',1e174},{'sxQGNT',1e171},{'QnQGNT',1e168},{'qdQGNT',1e165},{'tQGNT',1e162},{'dQGNT',1e159},{'uQGNT',1e156},{'qQGNT',1e153},{'NQDDr',1e150},{'OQDDr',1e147},{'SpQDR',1e144},{'sxQDR',1e141},{'QnQDR',1e138},{'qdQDR',1e135},{'tQDR',1e132},{'dQDR',1e129},{'uQDR',1e126},{'QdDR',1e123},{'NoTG',1e120},{'OcTG',1e117},{'SpTG',1e114},{'ssTG',1e111},{'QnTG',1e108},{'qtTG',1e105},{'tsTG',1e102},{'DTG',1e99},{'UTG',1e96},{'TGN',1e93},{'NVG',1e90},{'OVG',1e87},{'SPG',1e84},{'SeV',1e81},{'QnV',1e78},{'qtV',1e75},{'TVg',1e72},{'DVg',1e69},{'UVg',1e66},{'Vgn',1e63},{'NvD',1e60},{'OcD',1e57},{'SpD',1e54},{'sxD',1e51},{'QnD',1e48},{'qdD',1e45},{'tdD',1e42},{'DD',1e39},{'Ud',1e36},{'de',1e33},{'N',1e30},{'O',1e27},{'Sp',1e24},{'sx',1e21},{'Qn',1e18},{'qd',1e15},{'T',1e12},{'B',1e9},{'M',1e6},{'k',1e3}}
local PlrData
local Players = game:GetService('Players')
local Player = Players.LocalPlayer
local gui = Player:WaitForChild('PlayerGui')
local LeftD = gui:WaitForChild('Main', 10):WaitForChild('Left_Side', 10):WaitForChild('Displays', 10)
local visited, Max_Levels, RankReq = {}, 0, {}
local a = require(game:GetService('ReplicatedStorage').Common.ReplicatedService.ReplicaController)

for i, v in pairs(a._replicas) do
    if v.Data.Inventory then
        PlrData = v.Data
    end
end

local function tablefind(tbl, value)
    for i, v in ipairs(tbl) do
        if v == value then
            return i
        end
    end
    return nil
end

local function parseNumber(str)
    if not str then
        return 0
    end
    local num, suf = str:match('([%d%.]+)(%a+)')
    if num and suf then
        for _, p in ipairs(suffixList) do
            if p[1] == suf then
                return tonumber(num) * p[2]
            end
        end
    end
    return tonumber(str) or 0
end

local function formatNumber(n)
    local absn = math.abs(n)
    for _, p in ipairs(suffixList) do
        if absn >= p[2] then
            local x = n / p[2]
            return x % 1 == 0 and ('%d%s'):format(x, p[1])
                or ('%.2f%s'):format(x, p[1])
        end
    end
    return n % 1 == 0 and ('%d'):format(n) or ('%.2f'):format(n)
end

local function scan(tbl)
    if type(tbl) ~= 'table' or visited[tbl] then
        return
    end
    visited[tbl] = true
    if rawget(tbl, 'Rank') and type(tbl.Rank) == 'table' then
        Max_Levels = tbl.Rank.Max_Levels or Max_Levels
        for _, v in pairs(tbl.Rank.Levels or {}) do
            if v.Level and v.Price and v.Price[1] and v.Price[1].Amount then
                RankReq[v.Level] = math.abs(v.Price[1].Amount)
            end
        end
    end
    for _, v in pairs(tbl) do
        if type(v) == 'table' then
            scan(v)
        end
    end
end

for _, v in pairs(getgc(true)) do
    if type(v) == 'table' then
        scan(v)
    end
end

local LevelCaps, XPReq = {}, {}
for _, t in ipairs(getgc(true)) do
    if type(t) == 'table' then
        if rawget(t, 'Id') and rawget(t, 'Level_Cap') then
            LevelCaps[t.Id] = t.Level_Cap
        elseif rawget(t, 'Player_Levels') then
            for lvl, info in ipairs(t.Player_Levels) do
                if info.Price and info.Price.Id == 'Exp' then
                    XPReq[lvl] = math.abs(info.Price.Amount)
                end
            end
        end
    end
end

local function getNextXP(level, prestige)
    local cap = LevelCaps[prestige] or math.huge
    if level >= cap then
        return 0, true
    end
    return XPReq[level + 1] or 0, false
end

getgenv().PrevStats = getgenv().PrevStats or { Exp = 0, Time = tick() }

local AVATAR_RARITY_MAP = {
    S = { label = 'MYTHICAL', color = 0xff0000 },
    SS = { label = 'PHANTOM', color = 0x5b00b5 },
    SSS = { label = 'SUPREME', color = 0xff7100 },
}

local function GetDropColor(rarity)
    rarity = rarity:upper()
    if rarity == 'SUPREME' then
        return 0xff7100
    elseif rarity == 'PHANTOM' then
        return 0x5b00b5
    else
        return 0x00ff00
    end
end

local function SendEmbed(title, desc, color, doPing)
    if not V.WebhookMode or V.WebhookURL == '' then
        return
    end
    local ts = os.time()
    local body = {
        content = doPing and ('<@' .. (V.UserId or '') .. '>') or '',
        embeds = {{   title = title, description = desc .. '\n<t:' .. ts .. ':T>', color = color,},},
        username = WEBHOOK_USERNAME,
        avatar_url = WEBHOOK_AVATAR,
        attachments = {},
    }
    pcall(function()
        request({ Url = V.WebhookURL, Method = 'POST', Headers = { ['Content-Type'] = 'application/json' }, Body = HttpService:JSONEncode(body),})
    end)
end
local function ParseDropMessage(msg)
    local clean = msg:gsub('<[^>]->', '')
    local playerName, category, rarity, item = clean:match('(%S+) got a %[(.-)%]%s*(%S+)%s*(.+)')
    if playerName == Player.Name and playerName and category and rarity and item then
        rarity = rarity:upper()
        if not tablefind(V.NotifyRarities, rarity) then
            return
        end
        SendEmbed('**Notification for ' .. playerName .. '**',string.format('**%s\n[%s] - %s | %s**',rarity,category,rarity,item),GetDropColor(rarity),true )
    end
end
local function ParseAvatarDrop(msg)
    local clean = msg:gsub('<[^>]->', '')
    local playerName, category, rank, item = clean:match('(%S+) got a (%[.-%]) RANK (%S+) %[Av%]%s*(.+)')
    if playerName == Player.Name and playerName and category and rank and item then
        local data = AVATAR_RARITY_MAP[rank:upper()]
        if data and tablefind(V.NotifyRarities, data.label) then
            return {playerName = playerName,desc = string.format('**%s\n%s - %s | %s**',data.label,category,rank,item),color = data.color,}
        end
    end
    return nil
end
local function ParseShadowsDrop(msg)
    local clean = msg:gsub('<[^>]->', '')
    local playerName, category, rank, item = clean:match('(%S+) got a (%[Shadows%]) RANK (%S+) %[%S+%] (.+)')
    if playerName == Player.Name and playerName and category and rank and item then
        local data = AVATAR_RARITY_MAP[rank:upper()]
        if data and tablefind(V.NotifyRarities, data.label) then
            return {playerName = playerName,desc = string.format('**%s\n%s - %s | %s**',data.label,category,rank,item),color = data.color,}
        end
    end
    return nil
end
local function HandleMessage(msg)
    local shadows = ParseShadowsDrop(msg)
    if shadows then
        SendEmbed('**Notification for ' .. shadows.playerName .. '**',shadows.desc,shadows.color,true)
        return
    end
    local avatar = ParseAvatarDrop(msg)
    if avatar then
        SendEmbed('**Notification for ' .. avatar.playerName .. '**',avatar.desc,avatar.color,true)
        return
    end
    ParseDropMessage(msg)
end
if TCS then
    local function ConnectChannel(channel)
        channel.MessageReceived:Connect(function(message)
            if message.Text then
                HandleMessage(message.Text)
            end
        end)
    end
    task.spawn(function()
        repeat
            task.wait()
        until TCS.TextChannels
        for _, c in pairs(TCS.TextChannels:GetChildren()) do
            ConnectChannel(c)
        end
        TCS.TextChannels.ChildAdded:Connect(ConnectChannel)
    end)
end
local function HookLegacyChat()
    local ChatGui = Player:WaitForChild('PlayerGui'):WaitForChild('Chat')
    local Frame = ChatGui:WaitForChild('Frame'):WaitForChild('ChatChannelParentFrame'):WaitForChild('Frame_MessageLogDisplay')
    Frame.ChildAdded:Connect(function(child)
        task.wait(0.05)
        local msgLabel = child:FindFirstChildWhichIsA('TextLabel', true)
        if msgLabel and msgLabel.Text then
            HandleMessage(msgLabel.Text)
        end
    end)
end
task.spawn(function()
    local ChatGui = Player:WaitForChild('PlayerGui'):WaitForChild('Chat')
    if ChatGui then
        HookLegacyChat()
    end
end)
local function formatTime(seconds)
    if not seconds or seconds == math.huge then
        return '∞'
    end
    local h = math.floor(seconds / 3600)
    local m = math.floor((seconds % 3600) / 60)
    local s = math.floor(seconds % 60)
    if h > 0 then
        return string.format('%dh %dm %ds', h, m, s)
    elseif m > 0 then
        return string.format('%dm %ds', m, s)
    else
        return string.format('%ds', s)
    end
end
local function EnergyCalculator()
    local energyText = LeftD:WaitForChild('Energy', 10):WaitForChild('Energy', 10):WaitForChild('Main', 10):WaitForChild('TextLabel', 10).Text
    local EnergyMatched = energyText:match('Energy:%s*(.-)$')
    local currentEnergy = parseNumber(EnergyMatched)
    local rankStat = Player.leaderstats:WaitForChild('Rank')
    local currentRank = tonumber(rankStat.Value) or 0
    local nextRank = currentRank + 1
    local NeedEnergy = nextRank <= Max_Levels and math.max(0, (RankReq[nextRank] or 0) - currentEnergy) or 0
    local Energy = (PlrData and PlrData.Stats and PlrData.Stats.Total and PlrData.Stats.Total['Energy']) or 0
    local EnergyPerSecond = Energy * 5.886
    local EnergyPerMinute = EnergyPerSecond * 60
    local EnergyPerHour = EnergyPerMinute * 60
    local TTNR = NeedEnergy / (EnergyPerSecond > 0 and EnergyPerSecond or 1)
    local EPS = formatNumber(EnergyPerSecond)
    local EPM = formatNumber(EnergyPerMinute)
    local EPH = formatNumber(EnergyPerHour)
    local TTRU = formatTime(TTNR)
    getgenv().EnergyInfo = {
        EnergyText = tostring(EnergyMatched) or '',
        CurrentRank = tostring(currentRank) or '',
        NextRank = tostring(nextRank) or '',
        EnergyUntilRank = NeedEnergy or 0,
        EnergyPerClick = Energy or 0,
        EnergyPerSecond = EPS or '',
        EnergyPerMinute = EPM or '',
        EnergyPerHour = EPH or '',
        TimeToRankUp = TTRU or '',
    }
end


local function SendStats()
    local PHUD = gui:WaitForChild('PlayerHUD', 10)
    if not PHUD or not LeftD then
        return
    end
    local lvlStat = Player.leaderstats:WaitForChild('Level (Prestige)')
    local level, prestige = lvlStat.Value:match('(%d+)%s*%((%d+)%)')
    level, prestige = tonumber(level), tonumber(prestige)
    local nextXP, CanPrestige = getNextXP(level, prestige)
    local expText = PHUD:WaitForChild('Player_Levels', 10):WaitForChild('Main', 10):WaitForChild('EXP_Counter', 10).Text
    local currentExp = parseNumber(expText:match('EXP:%s*(.-)%s*/'))
    local NeedExp = CanPrestige and 0 or math.max(0, nextXP - currentExp)
    local CoinsText = LeftD:WaitForChild('Energy', 10):WaitForChild('Coins', 10):WaitForChild('Main', 10):WaitForChild('TextLabel', 10).Text
    local now = tick()
    local dt = math.max(now - getgenv().PrevStats.Time, 1) / 60
    local expPerMin = (currentExp - getgenv().PrevStats.Exp) / dt
    getgenv().PrevStats.Exp = currentExp
    getgenv().PrevStats.Time = now
    local E = getgenv().EnergyInfo
    local description = table.concat({
        '**' .. CoinsText .. '**',
        '**Rank: ' .. E.CurrentRank .. '**',
        '**Energy: '.. E.EnergyText .. (E.EnergyUntilRank > 0 and ', Need: ' .. formatNumber(E.EnergyUntilRank) .. ' to Rank Up**' or '**'),
        '**Prestige: ' .. tostring(prestige) .. '**',
        '**Level: '.. tostring(level) .. ', EXP: ' .. formatNumber(currentExp) .. ' / ' .. formatNumber(nextXP) .. (CanPrestige and ', Ready to Prestige**' or ', Need: ' .. formatNumber(NeedExp) .. ' to Level Up**'),
        '',
        '**Calculations:**',
        '**EXP per minute: ' .. formatNumber(expPerMin) .. '**',
        '**Energy per minute: ' .. E.EnergyPerMinute .. '**',
        '**Time to rank up: ' .. E.TimeToRankUp .. '**',
        '*Calculations might be wrong sometimes*',
    }, '\n')
    SendEmbed('**Notification for ' .. Player.Name .. '**',description, 0x00ff00)
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = 'AE Helper by rosel4k',
    Icon = 'info',
    LoadingTitle = '',
    LoadingSubtitle = '',
    ShowText = '',
    Theme = 'Default',
    ToggleUIKeybind = 'K',
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    ConfigurationSaving = {
        Enabled = true,
        FolderName = 'Rosel4kScripts',
        FileName = 'AE_Helper',
    },
    KeySystem = false,
})

    
local WebhookTab = Window:CreateTab('Webhook', 'webhook')
local CalculationsTab = Window:CreateTab('Calculations', 'calculator')
local ToolsTab = Window:CreateTab('Tools', 'hammer')

local WebSec = WebhookTab:CreateSection('Webhook Settings')

local WebTog = WebhookTab:CreateToggle({
    Name = 'Enable Webhook',
    CurrentValue = false,
    Flag = 'WebTog',
    Callback = function(Value)
        if Value then
            V.WebhookMode = Value
            EnergyCalculator()
            SendStats()
            task.spawn(function()
                while V.WebhookMode do task.wait((V.WebhookTimer or 1) * 60)
                    EnergyCalculator()
                    SendStats()
                end
            end)
        else
            V.WebhookMode = Value or false
        end
    end,
})
local WebURLPara = WebhookTab:CreateParagraph({ Title = 'Current URL:', Content = '' })
local WebInput = WebhookTab:CreateInput({
    Name = 'Webhook URL',
    CurrentValue = '',
    PlaceholderText = 'URL HERE',
    RemoveTextAfterFocusLost = true,
    Flag = 'WebInput',
    Callback = function(Text)
        if string.find(Text, 'https://discord.com/api/webhooks') then
            WebURLPara:Set({ Title = 'Current URL:', Content = Text })
            V.WebhookURL = Text
        else
            WebURLPara:Set({Title = 'Current URL:',Content = 'WRONG URL OR NOT EVEN AN ULR',})
        end
    end,
})

local WebTimer = WebhookTab:CreateSlider({
    Name = 'Webhooks Interval',
    Range = { 0, 30 },
    Increment = 1,
    Suffix = 'Minutes',
    CurrentValue = 5,
    Flag = 'WebTimer',
    Callback = function(Value)
        V.WebhookTimer = tonumber(Value)
    end,
})

local WebDrops = WebhookTab:CreateToggle({
    Name = 'Enable Drops Notification',
    CurrentValue = false,
    Flag = 'WebDrops',
    Callback = function(Value)
        V.GameNotifications = Value
    end,
})

local WebDropsSelect = WebhookTab:CreateDropdown({
    Name = 'Rarity To Notify',
    Options = { 'SUPREME', 'PHANTOM' },
    CurrentOption = { 'SUPREME', 'PHANTOM' },
    MultipleOptions = true,
    Flag = 'WebDropsSelect',
    Callback = function(Options)
        V.NotifyRarities = Options
    end,
})
local WebIDPara = WebhookTab:CreateParagraph({ Title = 'Current Id:', Content = '' })
local WebIDInput = WebhookTab:CreateInput({
    Name = 'Discourd User Id',
    CurrentValue = '',
    PlaceholderText = 'ID HERE',
    RemoveTextAfterFocusLost = true,
    Flag = 'WebIDInput',
    Callback = function(Text)
        WebIDPara:Set({ Title = 'Current Id:', Content = Text })
        V.UserId = Text
    end,
})

local EnergyPara1 = CalculationsTab:CreateParagraph({ Title = 'Current Energy:', Content = '' })
local EnergyPara2 = CalculationsTab:CreateParagraph({Title = 'Energy To Reach Next Rank:',Content = '',})
local EnergyPara3 = CalculationsTab:CreateParagraph({Title = 'Energy Per Click:',Content = '',})
local EnergyPara4 = CalculationsTab:CreateParagraph({Title = 'Energy Per Second:',Content = '',})
local EnergyPara5 = CalculationsTab:CreateParagraph({Title = 'Energy Per Minute:',Content = '',})
local EnergyPara6 = CalculationsTab:CreateParagraph({Title = 'Energy Per Hour:',Content = '',})
local EnergyPara7 = CalculationsTab:CreateParagraph({Title = 'Time To Rank Up:',Content = '',})

local function UpdateParas()
    EnergyCalculator()
    local E = getgenv().EnergyInfo
    EnergyPara1:Set({ Title = 'Current Energy:', Content = E.EnergyText })
    EnergyPara2:Set({Title = 'Energy To Reach Next Rank:',Content = formatNumber(E.EnergyUntilRank)})
    EnergyPara3:Set({ Title = 'Energy Per Click:', Content = formatNumber(E.EnergyPerClick)})
    EnergyPara4:Set({Title = 'Energy Per Second:',Content = E.EnergyPerSecond,})
    EnergyPara5:Set({Title = 'Energy Per Minute:',Content = E.EnergyPerMinute,})
    EnergyPara6:Set({ Title = 'Energy Per Hour:', Content = E.EnergyPerHour })
    EnergyPara7:Set({ Title = 'Time To Rank Up:', Content = E.TimeToRankUp })
end
UpdateParas()
Rayfield:LoadConfiguration()
local energyText = LeftD:WaitForChild('Energy', 10):WaitForChild('Energy', 10):WaitForChild('Main', 10):WaitForChild('TextLabel', 10)
local lastUpdate = 0
energyText:GetPropertyChangedSignal('Text'):Connect(function()
    if os.clock() - lastUpdate > 0.1 then
        lastUpdate = os.clock()
        UpdateParas()
    end
end)

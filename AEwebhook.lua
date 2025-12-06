local success, errorOrValue = pcall(function()
    local Players = cloneref(game:GetService('Players'))
    local Player = Players.LocalPlayer
    repeat task.wait() until game:IsLoaded()
    task.wait(5)
    repeat task.wait() until Players and Player and Player.Parent

    if game.PlaceId ~= 90462358603255 then
        Player:Kick("Wrong game buddy")
    end

    local ReplicatedStorage = game:GetService('ReplicatedStorage')
    local InventoryEvent = ReplicatedStorage.Events.Inventory
    local Event = ReplicatedStorage.Events.To_Server
    local HttpService = game:GetService('HttpService')
    local TCS = game:GetService('TextChatService')
    local VirtualUser = game:GetService('VirtualUser')
    local TeleportService = cloneref(game:GetService("TeleportService"))
    local CoreGui = cloneref(game:GetService("CoreGui"))
    local LocalPlayer = cloneref(Players.LocalPlayer)
    local PromptGui = CoreGui:WaitForChild("RobloxPromptGui", 10)
    local Overlay = PromptGui and PromptGui:WaitForChild("promptOverlay", 10)
        Player.Idled:Connect(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end)

    local function IsPlayerKicked(): boolean
        if not Overlay then return false end
        for _, child in ipairs(Overlay:GetChildren()) do
            if child:IsA("Frame") and child.Name == "ErrorPrompt" then
                return true
            end
        end
        return false
    end

    local function Reconnect()
        local playersCount = #Players:GetPlayers()
        if playersCount <= 1 then
            warn("[AutoReconnect] Player kicked — rejoining new server...")
            LocalPlayer:Kick("\n\nReconnecting...")
            task.wait(0.75)
            TeleportService:Teleport(game.PlaceId, LocalPlayer)
        else
            warn("[AutoReconnect] Player kicked — rejoining current instance...")
            TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
        end
    end

    task.spawn(function()
        while task.wait(2) do
            if IsPlayerKicked() then
                Reconnect()
            end
        end
    end)

    if Overlay then
        Overlay.ChildAdded:Connect(function(child)
            if child.Name == "ErrorPrompt" then
                task.wait(1)
                Reconnect()
            end
        end)
    end

    warn("[AutoReconnect] Loaded and monitoring for kicks.")

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

    getgenv().SelectedRarities = {}
    getgenv().SelectedRarityDel = {}
    getgenv().SelectedStat = ""

    local PrimaryUpgrades = {
        ["Damage"] = "Primary_Damage",
        ["Energy"] = "Primary_Energy",
        ["Coins"] = "Primary_Coins",
        ["Luck"] = "Primary_Luck"
    }

    local WEBHOOK_USERNAME = 'Anime Eternal Notificator'
    local WEBHOOK_AVATAR = 'https://i.imgur.com/SX41gmf.png'

    local suffixList = {{'UNCENT',1e306},{'CENT',1e303},{'NONONGNTL',1e300},{'OTNONGNTL',1e297},{'SPNONGNTL',1e294},{'SXNONGNTL',1e291},{'QNNONGNTL',1e288},{'QTNONGNTL',1e285},{'TNONGNTL',1e282},{'DNONGNTL',1e279},{'UNONGNTL',1e276},{'NONGNTL',1e273},{'NVOTGNTL',1e270},{'OTOTGNTL',1e267},{'SPOTGNTL',1e264},{'SXOTGNTL',1e261},{'QNOTGNTL',1e258},{'QTOTGNTL',1e255},{'TOTGNTL',1e252},{'DOTGNTL',1e249},{'UOTGNTL',1e246},{'OTGNTL',1e243},{'NVSPTGNTL',1e240},{'OSPTGNTL',1e237},{'SPSPTGNTL',1e234},{'SXSPTGNTL',1e231},{'QNSPTGNTL',1e228},{'QTSPTGNTL',1e225},{'TSPTGNTL',1e222},{'DSPTGNTL',1e219},{'USPTGNTL',1e216},{'SPTGNTL',1e213},{'NVSXGNTL',1e210},{'OSXGNTL',1e207},{'SPSXGNTL',1e204},{'SXSXGNTL',1e201},{'QNSXGNTL',1e198},{'QTSXGNTL',1e195},{'TSXGNTL',1e192},{'DSXGNTL',1e189},{'USXGNTL',1e186},{'SXGNTL',1e183},{'NQQGNT',1e180},{'OQQGNT',1e177},{'SpQGNT',1e174},{'sxQGNT',1e171},{'QnQGNT',1e168},{'qdQGNT',1e165},{'tQGNT',1e162},{'dQGNT',1e159},{'uQGNT',1e156},{'qQGNT',1e153},{'NQDDr',1e150},{'OQDDr',1e147},{'SpQDR',1e144},{'sxQDR',1e141},{'QnQDR',1e138},{'qdQDR',1e135},{'tQDR',1e132},{'dQDR',1e129},{'uQDR',1e126},{'QdDR',1e123},{'NoTG',1e120},{'OcTG',1e117},{'SpTG',1e114},{'ssTG',1e111},{'QnTG',1e108},{'qtTG',1e105},{'tsTG',1e102},{'DTG',1e99},{'UTG',1e96},{'TGN',1e93},{'NVG',1e90},{'OVG',1e87},{'SPG',1e84},{'SeV',1e81},{'QnV',1e78},{'qtV',1e75},{'TVg',1e72},{'DVg',1e69},{'UVg',1e66},{'Vgn',1e63},{'NvD',1e60},{'OcD',1e57},{'SpD',1e54},{'sxD',1e51},{'QnD',1e48},{'qdD',1e45},{'tdD',1e42},{'DD',1e39},{'Ud',1e36},{'de',1e33},{'N',1e30},{'O',1e27},{'Sp',1e24},{'sx',1e21},{'Qn',1e18},{'qd',1e15},{'T',1e12},{'B',1e9},{'M',1e6},{'k',1e3}}
    local Rarities = {
        "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Phantom", "Supreme", "Exotic"
    }
    local RarityToNumber = {}
    for i, rarity in ipairs(Rarities) do
        RarityToNumber[rarity] = i
    end

    local gui = Player:WaitForChild('PlayerGui')
    local LeftD = gui:WaitForChild('Main', 10):WaitForChild('Left_Side', 10):WaitForChild('Displays', 10)
    local visited, Max_Levels, RankReq = {}, 0, {}
    local a = require(ReplicatedStorage.Common.ReplicatedService.ReplicaController)
    local PetsID = {}
    local PlrData,GameData

    for i, v in pairs(a._replicas) do
        if v.Data.Inventory then
            PlrData = v.Data
        else
            GameData = v.Data
        end
    end

    for i,v in pairs(GameData.Items) do
        if v.Category == "Pets" then
            if not table.find(PetsID, v.Id) then
                table.insert(PetsID, v.Id)
            end
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
                if x % 1 == 0 then
                    return ('%d%s'):format(x, p[1])
                else
                    return ('%.2f%s'):format(x, p[1])
                end
            end
        end
        if n % 1 == 0 then
            return ('%d'):format(n)
        else
            return ('%.2f'):format(n)
        end
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

    local function getNextXP(level, prestige, lvlcap)
        local cap = LevelCaps[prestige] or math.huge
        if level >= cap then
            return 0, true, cap
        end
        return XPReq[level + 1] or 0, false, cap
    end

    getgenv().PrevStats = getgenv().PrevStats or { Exp = 0, Time = tick() }

    local AVATAR_RARITY_MAP = {
        S = { label = 'MYTHICAL', color = 0xff0000 },
        SS = { label = 'PHANTOM', color = 0x5b00b5 },
        SSS = { label = 'SUPREME', color = 0xff7100 },
        SSSS = { label = 'EXOTIC', color = 0xff0000 }
    }

    local function GetDropColor(rarity)
        rarity = rarity:upper()
        if rarity == 'EXOTIC' then
            return 0xff0000
        elseif rarity == 'SUPREME' then
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
            embeds = {{ title = title, description = desc .. '\n<t:' .. ts .. ':T>\n*made by @rosel4k*', color = color }},
            username = WEBHOOK_USERNAME,
            avatar_url = WEBHOOK_AVATAR,
            attachments = {},
        }
        pcall(function()
            request({
                Url = V.WebhookURL,
                Method = 'POST',
                Headers = { ['Content-Type'] = 'application/json' },
                Body = HttpService:JSONEncode(body),
            })
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
            SendEmbed('**Notification for ' .. playerName .. '**',
                string.format('**%s\n[%s] - %s | %s**', rarity, category, rarity, item),
                GetDropColor(rarity),
                true
            )
        end
    end

    local function ParseAvatarDrop(msg)
        local clean = msg:gsub('<[^>]->', '')
        local playerName, category, rank, item = clean:match('(%S+) got a (%[.-%]) RANK (%S+) %[Av%]%s*(.+)')
        if playerName == Player.Name and playerName and category and rank and item then
            local data = AVATAR_RARITY_MAP[rank:upper()]
            if data and tablefind(V.NotifyRarities, data.label) then
                return {
                    playerName = playerName,
                    desc = string.format('**%s\n%s - %s | %s**', data.label, category, rank, item),
                    color = data.color,
                }
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
                return {
                    playerName = playerName,
                    desc = string.format('**%s\n%s - %s | %s**', data.label, category, rank, item),
                    color = data.color,
                }
            end
        end
        return nil
    end

    local function HandleMessage(msg)
        local shadows = ParseShadowsDrop(msg)
        if shadows then
            SendEmbed('**Notification for ' .. shadows.playerName .. '**', shadows.desc, shadows.color, true)
            return
        end
        local avatar = ParseAvatarDrop(msg)
        if avatar then
            SendEmbed('**Notification for ' .. avatar.playerName .. '**', avatar.desc, avatar.color, true)
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
            repeat task.wait() until TCS.TextChannels
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
        local percent = (currentEnergy / RankReq[nextRank]) * 100
        local filled = math.floor(percent / 10)
        local empty = 10 - filled
        if filled >= 10 then
            filled = 10
        end
        if empty <= 0 then
            empty = 0
        end
        local coloredProgressBar = "**["..string.rep("🟩", filled)..string.rep("🟥", empty).."] "..math.floor(percent + 0.5).."%**"
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
            ColoredBar = coloredProgressBar or ''
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
        local nextXP, CanPrestige, LevelCap = getNextXP(level, prestige, LevelCap)
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
            '*///////////*',
            '**Rank: ' .. E.CurrentRank .. ' / '.. tostring(Max_Levels) .. '**',
            '**Energy: '.. E.EnergyText .. (E.EnergyUntilRank > 0 and ' / ' .. formatNumber(E.EnergyUntilRank) .. '**' or '**'),
            '' .. E.ColoredBar ..'',
            '*///////////*',
            '**Time to rank up: ' .. E.TimeToRankUp .. '**',
            '*///////////*',
            '**Prestige: ' .. tostring(prestige) .. '**',
            '**Level: '.. tostring(level) .. ' / ' .. LevelCaps[prestige] .. '**',
            '** EXP: ' .. formatNumber(currentExp) .. ' / ' .. formatNumber(nextXP) '**',
            '**' .. (CanPrestige and ', Ready to Prestige**' or ', Need: ' .. formatNumber(NeedExp) .. ' to Level Up**'),
            '*///////////*',
            '**Calculations:**',
            '**EXP per minute: ' .. formatNumber(expPerMin) .. '**',
            '*///////////*',
            '**Energy per click: ' .. formatNumber(E.EnergyPerClick) .. '**',
            '**Energy per minute: ' .. E.EnergyPerMinute .. '**',
            '**Energy per hour: ' .. E.EnergyPerHour .. '**',
            '*///////////*',
            '*Calculations might be wrong sometimes*\n',
        }, '\n')
        SendEmbed('**Notification for ' .. Player.Name .. '**', description, 0x00ff00)
    end

    ---GUI BUTTON OPEN/CLOSE GUI
    local player = game.Players.LocalPlayer
    local gui = Instance.new("ScreenGui")
    gui.ResetOnSpawn = false
    gui.Parent = player:WaitForChild("PlayerGui")

    local buttonFrame = Instance.new("Frame")
    buttonFrame.Size = UDim2.new(0, 100, 0, 40)
    buttonFrame.Position = UDim2.new(0.5, 150, 0, 10)
    buttonFrame.BackgroundTransparency = 0.3
    buttonFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    buttonFrame.BorderSizePixel = 0
    buttonFrame.Parent = gui

    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 1, 0)
    button.Text = "Press L"
    button.TextColor3 = Color3.new(1, 1, 1)
    button.BackgroundTransparency = 0.1
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.Parent = buttonFrame

    local isDragging = false
    local dragStart = Vector2.new()
    local startPos = UDim2.new()

    local UserInputService = game:GetService("UserInputService")
    local VirtualInputManager = game:GetService("VirtualInputManager")

    local function startDrag(input)
        isDragging = true
        dragStart = input.Position
        startPos = buttonFrame.Position
    end

    local function stopDrag()
        isDragging = false
    end

    local function updateDrag(input)
        if isDragging then
            local delta = input.Position - dragStart
            buttonFrame.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end

    button.MouseButton1Click:Connect(function()
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.L, false, game)
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.L, false, game)
        print("L pressed")
    end)

    button.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            startDrag(input)
        end
    end)

    button.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            stopDrag()
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            updateDrag(input)
        end
    end)

    ---GUI PART
    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
    local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

    local Window = Fluent:CreateWindow({
        Title = "AE Helper",
        SubTitle = "by rosel4k",
        TabWidth = 160,
        Size = UDim2.fromOffset(460, 380),
        Acrylic = false,
        Theme = "Darker",
        MinimizeKey = Enum.KeyCode.L
    })
    local Tabs = {
        WebhookTab = Window:AddTab({ Title = "Webhook", Icon = "webhook" }),
        CalculationsTab = Window:AddTab({ Title = "Calculations", Icon = "calculator" }),
        ToolsTab = Window:AddTab({ Title = "Tools", Icon = "hammer" }),
        Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
    }

    local WebSec = Tabs.WebhookTab:AddSection("Webhook Setting") 
    local Calculations = Tabs.CalculationsTab:AddSection("Energy Calculations")
    local Tools = Tabs.ToolsTab:AddSection("Tools")

    local Options = Fluent.Options
    getgenv().Toggles = {
        StatResets = false,
        DailyQuests = false,
        AutoDelete = false,
        Webhook = false,
        AutoUpgrade = false
    }
    local T = getgenv().Toggles

    local WebTog = WebSec:AddToggle("WebTog", {Title = "Enable Webhook", Default = false})
    Options.WebTog:OnChanged(function(Value)
        T.Webhook = Value
        V.WebhookMode = Value
        while T.Webhook do
            EnergyCalculator()
            SendStats()
            task.wait((V.WebhookTimer or 1) * 60)
        end
    end)
    local WebURLPara = WebSec:AddParagraph({Title = "Current URL:",Content = ""})
    local WebInput = WebSec:AddInput("WebInput", {
        Title = "Webhook URL",
        Default = "",
        Placeholder = "URL HERE",
        Numeric = false,
        Finished = true,
        Callback = function(Value)
            if string.find(Value, 'https://discord.com/api/webhooks') then
                WebURLPara:SetDesc(Value)
                V.WebhookURL = Value
            else
                WebURLPara:SetDesc('WRONG URL OR NOT EVEN AN URL')
            end
        end
    })
    local WebTimer = WebSec:AddSlider("WebTimer", {
        Title = "Webhooks\nInterval",
        Description = "Minutes",
        Default = 5,
        Min = 1,
        Max = 30,
        Rounding = 1,
        Callback = function(Value)
            V.WebhookTimer = tonumber(Value)
        end
    })
    local WebDrops = WebSec:AddToggle("WebDrops", {Title = "Enable Drops Notification", Default = false})
    Options.WebDrops:OnChanged(function(Value)
        V.GameNotifications = Value
    end)

    local WebDropsSelect = WebSec:AddDropdown("WebDropsSelect", {
        Title = "Rarity To\nNotify",
        Values = {'EXOTIC', 'SUPREME', 'PHANTOM' },
        Multi = true,
        Default = {'EXOTIC', 'SUPREME', 'PHANTOM' },
    })
    WebDropsSelect:OnChanged(function(Value)
        for i,v in pairs(Value) do
            if not table.find(V.NotifyRarities, i) then
                table.insert(V.NotifyRarities, i)
            end
        end
    end)

    local WebIDPara = WebSec:AddParagraph({Title = "Current Id:",Content = ""})
    local WebIDInput = WebSec:AddInput("WebIDInput", {
        Title = "Discord User Id",
        Default = "",
        Placeholder = "Id HERE",
        Numeric = false,
        Finished = true,
        Callback = function(Value)
            WebIDPara:SetDesc(Value)
            V.UserId = tostring(Value)
        end
    })


    local EnergyPara1 = Calculations:AddParagraph({ Title = "Current Energy", Content = "" })
    local EnergyPara2 = Calculations:AddParagraph({ Title = "Energy To Reach Next Rank", Content = "" })
    local EnergyPara3 = Calculations:AddParagraph({ Title = "Energy Per Click", Content = "" })
    local EnergyPara4 = Calculations:AddParagraph({ Title = "Energy Per Second", Content = "" })
    local EnergyPara5 = Calculations:AddParagraph({ Title = "Energy Per Minute", Content = "" })
    local EnergyPara6 = Calculations:AddParagraph({ Title = "Energy Per Hour", Content = "" })
    local EnergyPara7 = Calculations:AddParagraph({ Title = "Time To Rank Up", Content = "" })


    local function UpdateParas()
        EnergyCalculator()
        local E = getgenv().EnergyInfo
        EnergyPara1:SetDesc(E.EnergyText )
        EnergyPara2:SetDesc(formatNumber(E.EnergyUntilRank) )
        EnergyPara3:SetDesc(formatNumber(E.EnergyPerClick) )
        EnergyPara4:SetDesc(E.EnergyPerSecond )
        EnergyPara5:SetDesc(E.EnergyPerMinute )
        EnergyPara6:SetDesc(E.EnergyPerHour )
        EnergyPara7:SetDesc(E.TimeToRankUp )
    end

    UpdateParas()


    local PunchAuto = Tools:AddButton({
        Title = "Get Punching Machine",
        Description = "",
        Callback = function()
            local Char = Player.Character or Player.CharacterAdded:Wait()
            local RP = Char:WaitForChild("HumanoidRootPart")
            local Counter = 0
            repeat
                task.wait()
                Event:FireServer({Id = "2301", Type = "Accept", Action = "_Quest"})
                task.wait(2)
                Counter = Counter + 1
            until workspace:FindFirstChild("Punching_Machine") or Counter >= 5

            local path = workspace:FindFirstChild("Punching_Machine")
            if path and #path:GetChildren() >= 1 then
                for _, v in pairs(path:GetChildren()) do
                    if (RP.CFrame.Position - v.CFrame.Position).Magnitude > 5 then
                        RP.CFrame = v.CFrame
                        task.wait(0.5)
                        for _, k in pairs(v:GetDescendants()) do
                            if k:IsA("ProximityPrompt") then
                                fireproximityprompt(k)
                                task.wait(3)
                                Event:FireServer({["Id"] = "2301", ["Type"] = "Complete", ["Action"] = "_Quest"})
                            end
                        end
                    end
                end
            end
        end
    })

    local FruitAuto = Tools:AddButton({
        Title = "Get Demon Fruit",
        Description = "",
        Callback = function()
            local Char = Player.Character or Player.CharacterAdded:Wait()
            local RP = Char:WaitForChild("HumanoidRootPart")
            local Counter = 0
            repeat
                task.wait()
                Event:FireServer({Id = "2302", Type = "Accept", Action = "_Quest"})
                task.wait(2)
                Counter = Counter + 1
            until workspace:FindFirstChild("Demon_Fruit") or Counter >= 5

            local path = workspace:FindFirstChild("Demon_Fruit")
            if path and #path:GetChildren() >= 1 then
                for _, v in pairs(path:GetChildren()) do
                    if (RP.CFrame.Position - v.CFrame.Position).Magnitude > 5 then
                        RP.CFrame = v.CFrame
                        task.wait(0.5)
                        for _, k in pairs(v:GetDescendants()) do
                            if k:IsA("ProximityPrompt") then
                                fireproximityprompt(k)
                                task.wait(3)
                                Event:FireServer({["Id"] = "2302", ["Type"] = "Complete", ["Action"] = "_Quest"})
                            end
                        end
                    end
                end
            end
        end
    })
    local RejoinButton = Tools:AddButton({
        Title = "Rejoin Game",
        Description = "",
        Callback = function()
            TeleportService:Teleport(game.PlaceId, LocalPlayer)
        end
    })
    local RejoinServerButton = Tools:AddButton({
        Title = "Rejoin Current Server",
        Description = "",
        Callback = function()
            TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
        end
    })

    local StatResets = Tools:AddToggle("StatResets", {Title = "Auto buy Stat Resets (10k x2)", Default = false })
    Options.StatResets:OnChanged(function(Value)
        T.StatResets = Value
        while T.StatResets do task.wait(10)
            Event:FireServer({Amount = 1,Product_Id = 7,Action = "Merchant_Purchase",Bench_Name = "Exchange_Shop_Products"})
        end
    end)

    local DailyQuests = Tools:AddToggle("DailyQuests", {Title = "Auto Accept Daily Quests", Default = false })
    Options.DailyQuests:OnChanged(function(Value)
        T.DailyQuests = Value
        while T.DailyQuests do
            for i = 1, 7 do
                if not T.DailyQuests then break end
                task.wait(1)
                Event:FireServer({Id = "200" .. i,Type = "Accept",Action = "_Quest"})
            end
            task.wait(10)
        end
    end)

    local StatDropDown = Tools:AddDropdown("StatDropDown", {
        Title = "Select Stat\nTo Put Points",
        Description = "",
        Values = {"Damage", "Energy", "Coins", "Luck"},
        Multi = false,
        Default = "",
        Callback = function(Value)
            if type(Value) == "string" then
                getgenv().SelectedStat = PrimaryUpgrades[Value] or ""
            end
        end
    })
    local AutoUpgrade = Tools:AddToggle("AutoUpgrade", {Title = "Auto Put Points", Default = false })
    Options.AutoUpgrade:OnChanged(function(Value)
        T.AutoUpgrade = Value
        while T.AutoUpgrade do task.wait(0.1)
            local tbl = {['Name'] = getgenv().SelectedStat,['Action'] = 'Assign_Level_Stats',['Amount'] = 1,}
            Event:FireServer(tbl)
        end
    end)

    
    local RarityDrop = Tools:AddDropdown("RarityDropdown", {
        Title = "Select Rarity\nTo Delete",
        Description = "",
        Values = Rarities,
        Multi = true,
        Default = {},
        Callback = function(Value)
            local SelectedRarities = {}
            getgenv().SelectedRarityDel = {}
            for i,v in pairs(Value) do
                if not table.find(SelectedRarities, i) then
                    table.insert(SelectedRarities, i)
                end
            end
            for _, rarity in ipairs(SelectedRarities) do
                local num = RarityToNumber[rarity]
                if num and not table.find(getgenv().SelectedRarityDel, num) then
                    table.insert(getgenv().SelectedRarityDel, num)
                end
            end
        end
    })
    local AutoDelete = Tools:AddToggle("AutoDelete", {Title = "Auto Delete Pets", Default = false })
    Options.AutoDelete:OnChanged(function(Value)
        T.AutoDelete = Value
        while T.AutoDelete do task.wait(1)
            local ToDelete = {}
            for i, v in pairs(PlrData.Inventory.Items) do
                if table.find(PetsID, v.Id) then
                    if v.Stats and v.Stats.Energy and not v.Locked and not v.Equipped and table.find(getgenv().SelectedRarityDel, v.Rarity) then
                        table.insert(ToDelete, i)
                    end
                end
            end
            if #ToDelete > 0 then
                InventoryEvent:FireServer({Selected = ToDelete,Action = "Mass_Delete",Category = "Pets"})
            end
        end
    end)

    SaveManager:SetLibrary(Fluent)
    InterfaceManager:SetLibrary(Fluent)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({})
    InterfaceManager:SetFolder("Rosel4k")
    SaveManager:SetFolder("Rosel4k/AEhelper")
    InterfaceManager:BuildInterfaceSection(Tabs.Settings)
    SaveManager:BuildConfigSection(Tabs.Settings)
    Window:SelectTab(1)
    SaveManager:LoadAutoloadConfig()

    local energyText = LeftD:WaitForChild('Energy', 10):WaitForChild('Energy', 10):WaitForChild('Main', 10):WaitForChild('TextLabel', 10)
    local lastUpdate = 0
    energyText:GetPropertyChangedSignal('Text'):Connect(function()
        if os.clock() - lastUpdate > 0.1 then
            lastUpdate = os.clock()
            UpdateParas()
        end
    end)
end)
if success then
    warn("[AE Helper] Loaded, made by @rosel4k (discord)")
else
    print("[AE Helper] An error occurred:", errorOrValue, "\n Please send it to @rosel4k on discord")
end


repeat task.wait() until game:IsLoaded()
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local TCS = game:GetService("TextChatService")
local Player = Players.LocalPlayer
local V = getgenv().Values
getgenv().Values = V
local WEBHOOK_USERNAME = "Anime Eternal Notificator"
local WEBHOOK_AVATAR = "https://i.imgur.com/SX41gmf.png"
local suffixList = {
    {"UNCENT",1e306},{"CENT",1e303},{"NONONGNTL",1e300},{"OTNONGNTL",1e297},{"SPNONGNTL",1e294},{"SXNONGNTL",1e291},{"QNNONGNTL",1e288},{"QTNONGNTL",1e285},{"TNONGNTL",1e282},{"DNONGNTL",1e279},{"UNONGNTL",1e276},{"NONGNTL",1e273},{"NVOTGNTL",1e270},{"OTOTGNTL",1e267},{"SPOTGNTL",1e264},{"SXOTGNTL",1e261},{"QNOTGNTL",1e258},{"QTOTGNTL",1e255},{"TOTGNTL",1e252},{"DOTGNTL",1e249},{"UOTGNTL",1e246},{"OTGNTL",1e243},{"NVSPTGNTL",1e240},{"OSPTGNTL",1e237},{"SPSPTGNTL",1e234},{"SXSPTGNTL",1e231},{"QNSPTGNTL",1e228},{"QTSPTGNTL",1e225},{"TSPTGNTL",1e222},{"DSPTGNTL",1e219},{"USPTGNTL",1e216},{"SPTGNTL",1e213},{"NVSXGNTL",1e210},{"OSXGNTL",1e207},{"SPSXGNTL",1e204},{"SXSXGNTL",1e201},{"QNSXGNTL",1e198},{"QTSXGNTL",1e195},{"TSXGNTL",1e192},{"DSXGNTL",1e189},{"USXGNTL",1e186},{"SXGNTL",1e183},{"NQQGNT",1e180},{"OQQGNT",1e177},{"SpQGNT",1e174},{"sxQGNT",1e171},{"QnQGNT",1e168},{"qdQGNT",1e165},{"tQGNT",1e162},{"dQGNT",1e159},{"uQGNT",1e156},{"qQGNT",1e153},{"NQDDr",1e150},{"OQDDr",1e147},{"SpQDR",1e144},{"sxQDR",1e141},{"QnQDR",1e138},{"qdQDR",1e135},{"tQDR",1e132},{"dQDR",1e129},{"uQDR",1e126},{"QdDR",1e123},{"NoTG",1e120},{"OcTG",1e117},{"SpTG",1e114},{"ssTG",1e111},{"QnTG",1e108},{"qtTG",1e105},{"tsTG",1e102},{"DTG",1e99},{"UTG",1e96},{"TGN",1e93},{"NVG",1e90},{"OVG",1e87},{"SPG",1e84},{"SeV",1e81},{"QnV",1e78},{"qtV",1e75},{"TVg",1e72},{"DVg",1e69},{"UVg",1e66},{"Vgn",1e63},{"NvD",1e60},{"OcD",1e57},{"SpD",1e54},{"sxD",1e51},{"QnD",1e48},{"qdD",1e45},{"tdD",1e42},{"DD",1e39},{"Ud",1e36},{"de",1e33},{"N",1e30},{"O",1e27},{"Sp",1e24},{"sx",1e21},{"Qn",1e18},{"qd",1e15},{"T",1e12},{"B",1e9},{"M",1e6},{"k",1e3}
}
local PlrData
local a = require(game:GetService("ReplicatedStorage").Common.ReplicatedService.ReplicaController)
for i,v in pairs(a._replicas) do
    if v.Data.Inventory then
        PlrData = v.Data
    end
end

local function table.find(tbl, value)
    for i, v in ipairs(tbl) do
        if v == value then
            return i
        end
    end
    return nil
end

local function parseNumber(str)
    if not str then return 0 end
    local num, suf = str:match("([%d%.]+)(%a+)")
    if num and suf then
        for _,p in ipairs(suffixList) do
            if p[1] == suf then return tonumber(num)*p[2] end
        end
    end
    return tonumber(str) or 0
end
local function formatNumber(n)
    local absn = math.abs(n)
    for _,p in ipairs(suffixList) do
        if absn >= p[2] then
            local x = n/p[2]
            return x%1==0 and ("%d%s"):format(x,p[1]) or ("%.2f%s"):format(x,p[1])
        end
    end
    return n%1==0 and ("%d"):format(n) or ("%.2f"):format(n)
end
local visited, Max_Levels, RankReq = {},0,{}
local function scan(tbl)
    if type(tbl)~="table" or visited[tbl] then return end
    visited[tbl]=true
    if rawget(tbl,"Rank") and type(tbl.Rank)=="table" then
        Max_Levels = tbl.Rank.Max_Levels or Max_Levels
        for _,v in pairs(tbl.Rank.Levels or {}) do
            if v.Level and v.Price and v.Price[1] and v.Price[1].Amount then
                RankReq[v.Level] = math.abs(v.Price[1].Amount)
            end
        end
    end
    for _,v in pairs(tbl) do if type(v)=="table" then scan(v) end end
end
for _,v in pairs(getgc(true)) do if type(v)=="table" then scan(v) end end
local LevelCaps, XPReq = {},{}
for _,t in ipairs(getgc(true)) do
    if type(t)=="table" then
        if rawget(t,"Id") and rawget(t,"Level_Cap") then
            LevelCaps[t.Id] = t.Level_Cap
        elseif rawget(t,"Player_Levels") then
            for lvl,info in ipairs(t.Player_Levels) do
                if info.Price and info.Price.Id=="Exp" then
                    XPReq[lvl] = math.abs(info.Price.Amount)
                end
            end
        end
    end
end
local function getNextXP(level,prestige)
    local cap = LevelCaps[prestige] or math.huge
    if level>=cap then return 0,true end
    return XPReq[level+1] or 0,false
end
getgenv().PrevStats = getgenv().PrevStats or {Exp=0,Energy=0,Time=tick()}
local AVATAR_RARITY_MAP = {
    S={label="MYTHICAL",color=0xff0000},
    SS={label="PHANTOM",color=0x5b00b5},
    SSS={label="SUPREME",color=0xff7100}
}
local function GetDropColor(rarity)
    rarity = rarity:upper()
    if rarity=="SUPREME" then return 0xff7100
    elseif rarity=="PHANTOM" then return 0x5b00b5
    else return 0x00ff00 end
end
local function SendEmbed(title, desc, color, doPing)
    if not V.WebhookMode or V.WebhookURL == "" then return end
    local ts = os.time()
    local body = {
        content = doPing and ("<@" .. (V.UserId or "") .. ">") or "",
        embeds = {{
            title = title,
            description = desc .. "\n<t:" .. ts .. ":T>",
            color = color
        }},
        username = WEBHOOK_USERNAME,
        avatar_url = WEBHOOK_AVATAR,
        attachments = {}
    }
    pcall(function()
        request({
            Url = V.WebhookURL,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = HttpService:JSONEncode(body)
        })
    end)
end
local function ParseDropMessage(msg)
    local clean = msg:gsub("<[^>]->","")
    local playerName, category, rarity, item = clean:match("(%S+) got a %[(.-)%]%s*(%S+)%s*(.+)")
    if playerName == Player.Name and playerName and category and rarity and item then
        rarity = rarity:upper()
        if not table.find(V.NotifyRarities, rarity) then return end
        SendEmbed("**Notification for " .. playerName .. "**", string.format("**%s\n[%s] - %s | %s**", rarity, category, rarity, item), GetDropColor(rarity), true)
    end
end
local function ParseAvatarDrop(msg)
    local clean = msg:gsub("<[^>]->","")
    local playerName, category, rank, item = clean:match("(%S+) got a (%[.-%]) RANK (%S+) %[Av%]%s*(.+)")
    if playerName == Player.Name and playerName and category and rank and item then
        local data = AVATAR_RARITY_MAP[rank:upper()]
        if data and table.find(V.NotifyRarities, data.label) then
            return {
                playerName = playerName,
                desc = string.format("**%s\n%s - %s | %s**", data.label, category, rank, item),
                color = data.color
            }
        end
    end
    return nil
end
local function ParseShadowsDrop(msg)
    local clean = msg:gsub("<[^>]->","")
    local playerName, category, rank, item = clean:match("(%S+) got a (%[Shadows%]) RANK (%S+) %[%S+%] (.+)")
    if playerName == Player.Name and playerName and category and rank and item then
        local data = AVATAR_RARITY_MAP[rank:upper()]
        if data and table.find(V.NotifyRarities, data.label) then
            return {
                playerName = playerName,
                desc = string.format("**%s\n%s - %s | %s**", data.label, category, rank, item),
                color = data.color
            }
        end
    end
    return nil
end
local function HandleMessage(msg)
    local shadows = ParseShadowsDrop(msg)
    if shadows then
        SendEmbed("**Notification for "..shadows.playerName.."**", shadows.desc, shadows.color, true)
        return
    end
    local avatar = ParseAvatarDrop(msg)
    if avatar then
        SendEmbed("**Notification for "..avatar.playerName.."**", avatar.desc, avatar.color, true)
        return
    end
    ParseDropMessage(msg)
end
if TCS then
    local function ConnectChannel(channel)
        channel.MessageReceived:Connect(function(message)
            if message.Text then HandleMessage(message.Text) end
        end)
    end
    task.spawn(function()
        repeat task.wait() until TCS.TextChannels
        for _,c in pairs(TCS.TextChannels:GetChildren()) do ConnectChannel(c) end
        TCS.TextChannels.ChildAdded:Connect(ConnectChannel)
    end)
end
local function HookLegacyChat()
    local ChatGui = Player:WaitForChild("PlayerGui"):WaitForChild("Chat")
    local Frame = ChatGui:WaitForChild("Frame"):WaitForChild("ChatChannelParentFrame"):WaitForChild("Frame_MessageLogDisplay")
    Frame.ChildAdded:Connect(function(child)
        task.wait(0.05)
        local msgLabel = child:FindFirstChildWhichIsA("TextLabel",true)
        if msgLabel and msgLabel.Text then HandleMessage(msgLabel.Text) end
    end)
end
task.spawn(function()
    local ChatGui = Player:WaitForChild("PlayerGui"):WaitForChild("Chat")
    if ChatGui then HookLegacyChat() end
end)
local function formatTime(seconds)
    if not seconds or seconds == math.huge then return "∞" end
    local h = math.floor(seconds / 3600)
    local m = math.floor((seconds % 3600) / 60)
    local s = math.floor(seconds % 60)
    if h > 0 then
        return string.format("%dh %dm %ds", h, m, s)
    elseif m > 0 then
        return string.format("%dm %ds", m, s)
    else
        return string.format("%ds", s)
    end
end
local function SendStats()
    local gui = Player:WaitForChild("PlayerGui")
    local PHUD = gui:WaitForChild("PlayerHUD",10)
    local LeftD = gui:WaitForChild("Main",10):WaitForChild("Left_Side",10):WaitForChild("Displays",10)
    if not PHUD or not LeftD then return end
    local lvlStat = Player.leaderstats:WaitForChild("Level (Prestige)")
    local level,prestige = lvlStat.Value:match("(%d+)%s*%((%d+)%)")
    level,prestige = tonumber(level),tonumber(prestige)
    local nextXP,CanPrestige = getNextXP(level,prestige)
    local expText = PHUD:WaitForChild("Player_Levels",10):WaitForChild("Main",10):WaitForChild("EXP_Counter",10).Text
    local currentExp = parseNumber(expText:match("EXP:%s*(.-)%s*/"))
    local NeedExp = CanPrestige and 0 or math.max(0,nextXP-currentExp)
    local energyText = LeftD:WaitForChild("Energy",10):WaitForChild("Energy",10):WaitForChild("Main",10):WaitForChild("TextLabel",10).Text
    local currentEnergy = parseNumber(energyText:match("Energy:%s*(.-)$"))
    local rankStat = Player.leaderstats:WaitForChild("Rank")
    local currentRank = tonumber(rankStat.Value) or 0
    local nextRank = currentRank + 1
    local NeedEnergy = nextRank<=Max_Levels and math.max(0,(RankReq[nextRank] or 0)-currentEnergy) or 0
    local CoinsText = LeftD:WaitForChild("Energy",10):WaitForChild("Coins",10):WaitForChild("Main",10):WaitForChild("TextLabel",10).Text
    local now = tick()
    local dt = math.max(now-getgenv().PrevStats.Time,1)/60
    local expPerMin = (currentExp-getgenv().PrevStats.Exp)/dt
    getgenv().PrevStats.Exp = currentExp
    getgenv().PrevStats.Time = now
    local Energy = (PlrData and PlrData.Stats and PlrData.Stats.Total and PlrData.Stats.Total["Energy"]) or 0
    local EnergyPerSecond = Energy * 5.886
    local EnergyPerMinute = EnergyPerSecond * 60
    local TTNR = NeedEnergy / (EnergyPerSecond > 0 and EnergyPerSecond or 1)
    local EPM = formatNumber(EnergyPerMinute)
    local TTRU = formatTime(TTNR)
    local description = table.concat({
        "**"..CoinsText.."**",
        "**Rank: "..currentRank.."**",
        "**Energy: "..formatNumber(currentEnergy)..(NeedEnergy>0 and ", Need: "..formatNumber(NeedEnergy).." to Rank Up**" or "**"),
        "**Prestige: "..tostring(prestige).."**",
        "**Level: "..level..", EXP: "..formatNumber(currentExp).." / "..formatNumber(nextXP)..(CanPrestige and ", Ready to Prestige**" or ", Need: "..formatNumber(NeedExp).." to Level Up**"),
        "",
        "**Calculations:**",
        "**EXP per minute: "..formatNumber(expPerMin).."**",
        "**Energy per minute: "..EPM.."**",
        "**Time to rank up: "..TTRU.."**",
        "*Calculations might be wrong sometimes*"
    }, "\n")
    SendEmbed("**Notification for "..Player.Name.."**", description, 0x00ff00)
end
SendStats()
task.spawn(function() while task.wait((V.WebhookTimer or 1)*60) do SendStats() end end)

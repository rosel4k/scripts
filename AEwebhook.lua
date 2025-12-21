local success, errorOrValue = pcall(function()
    local Players = cloneref(game:GetService('Players'))
    local Player = Players.LocalPlayer
    repeat task.wait() until game:IsLoaded()
    task.wait(5)
    repeat task.wait() until Players and Player and Player.Parent

    if game.PlaceId ~= 90462358603255 then
        Player:Kick("Wrong game buddy")
    end
    local Stuff = loadstring(game:HttpGet('https://raw.githubusercontent.com/rosel4k/scripts/refs/heads/main/AE_Stuff.lua'))()

    local HttpService = game:GetService('HttpService')
    local TCS = game:GetService('TextChatService')
    local VirtualUser = game:GetService('VirtualUser')
    local TeleportService = cloneref(game:GetService("TeleportService"))
    local CoreGui = cloneref(game:GetService("CoreGui"))
    local LocalPlayer = cloneref(Players.LocalPlayer)
    local PromptGui = CoreGui:WaitForChild("RobloxPromptGui", 10)
    local Overlay = PromptGui and PromptGui:WaitForChild("promptOverlay", 10)

    ---Anti AFK
    Player.Idled:Connect(function()VirtualUser:CaptureController()VirtualUser:ClickButton2(Vector2.new())end)

    --Auto reconnect
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


    ---variables
    local V = getgenv().Values
    local E = getgenv().EnergyInfo
    local EJ = getgenv().Emoji
    local RS = getgenv().RandomStuff
    local T = getgenv().Toggles

    local RarityToNumber = {}
    for i, rarity in ipairs(RS.Rarities) do
        RarityToNumber[rarity] = i
    end

    local gui = Player:WaitForChild('PlayerGui')
    local LeftD = gui:WaitForChild('Main', 10):WaitForChild('Left_Side', 10):WaitForChild('Displays', 10)
    local visited, Max_Levels, RankReq = {}, 0, {}
    local a = require(game.ReplicatedStorage.Common.ReplicatedService.ReplicaController)
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

    local function SendEmbed(title, desc, color, doPing)
        if not V.WebhookMode or V.WebhookURL == '' then
            return
        end
        local ts = os.time()
        local body = {
            content = doPing and ('<@' .. (V.UserId or '') .. '>') or '',
            embeds = {{ title = title, description = desc .. '\n<t:' .. ts .. ':T>\n*made by @rosel4k*', color = color }},
            username = RS.WEBHOOK_USERNAME,
            avatar_url = RS.WEBHOOK_AVATAR,
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
            SendEmbed('**Notification for ' .. playerName .. '**',string.format('**%s\n[%s] - %s | %s**', rarity, category, rarity, item),Stuff.GetDropColor(rarity),true)
        end
    end

    local function ParseAvatarDrop(msg)
        local clean = msg:gsub('<[^>]->', '')
        local playerName, category, rank, item = clean:match('(%S+) got a (%[.-%]) RANK (%S+) %[Av%]%s*(.+)')
        if playerName == Player.Name and playerName and category and rank and item then
            local data = RS.AVATAR_RARITY_MAP[rank:upper()]
            if data and tablefind(V.NotifyRarities, data.label) then
                return {playerName = playerName,desc = string.format('**%s\n%s - %s | %s**', data.label, category, rank, item),color = data.color,}
            end
        end
        return nil
    end

    local function ParseShadowsDrop(msg)
        local clean = msg:gsub('<[^>]->', '')
        local playerName, category, rank, item = clean:match('(%S+) got a (%[Shadows%]) RANK (%S+) %[%S+%] (.+)')
        if playerName == Player.Name and playerName and category and rank and item then
            local data = RS.AVATAR_RARITY_MAP[rank:upper()]
            if data and tablefind(V.NotifyRarities, data.label) then
                return {playerName = playerName,desc = string.format('**%s\n%s - %s | %s**', data.label, category, rank, item),color = data.color,}
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

    local function EnergyCalculator()
        local success, errorOrValue = pcall(function()
            local energyText = LeftD:WaitForChild('Energy', 10):WaitForChild('Energy', 10):WaitForChild('Main', 10):WaitForChild('TextLabel', 10).Text
            local EnergyMatched = energyText:match('Energy:%s*(.-)$')
            local currentEnergy = Stuff.parseNumber(EnergyMatched)
            local rankStat = Player.leaderstats:WaitForChild('Rank')
            local currentRank = tonumber(rankStat.Value) or 0
            local nextRank = currentRank + 1
            local Energy = (PlrData and PlrData.Stats and PlrData.Stats.Total and PlrData.Stats.Total['Energy']) or 0
            local EnergyPerSecond = Energy * 5.886
            local EnergyPerMinute = EnergyPerSecond * 60
            local EnergyPerHour = EnergyPerMinute * 60
            local EPS = Stuff.formatNumber(EnergyPerSecond)
            local EPM = Stuff.formatNumber(EnergyPerMinute)
            local EPH = Stuff.formatNumber(EnergyPerHour)

            if currentRank >= Max_Levels then
                getgenv().EnergyInfo = {
                    EnergyText = tostring(EnergyMatched) or '',
                    CurrentRank = tostring(currentRank) or '',
                    NextRank = "MAX",
                    EnergyUntilRank = 0,
                    EnergyPerClick = Energy or 0,
                    EnergyPerSecond = EPS or '',
                    EnergyPerMinute = EPM or '',
                    EnergyPerHour = EPH or '',
                    TimeToRankUp = "MAX RANK",
                    ColoredBar = "**[🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩] 100%**",
                    NextReq = "MAX"
                }
                return
            end

            local nextRankReq = RankReq[nextRank] or 0
            local NeedEnergy = math.max(0, nextRankReq - currentEnergy)
            local TTNR = NeedEnergy / (EnergyPerSecond > 0 and EnergyPerSecond or 1)
            local TTRU = Stuff.formatTime(TTNR)
            local percent = (currentEnergy / nextRankReq) * 100
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
                ColoredBar = coloredProgressBar or '',
                NextReq = nextRankReq
            }
        end)
        if not success then
            print("[AE Helper] An error occurred:", errorOrValue, "\n Please send it to @rosel4k on discord")
        end
    end

    local function SendStats()
        local success, errorOrValue = pcall(function()
            local PHUD = gui:WaitForChild('PlayerHUD', 10)
            if not PHUD or not LeftD then
                return
            end
            local lvlStat = Player.leaderstats:WaitForChild('Level (Prestige)')
            local level, prestige = lvlStat.Value:match('(%d+)%s*%((%d+)%)')
            level, prestige = tonumber(level), tonumber(prestige)
            local nextXP, CanPrestige, LevelCap = getNextXP(level, prestige, LevelCap)
            local expText = PHUD:WaitForChild('Player_Levels', 10):WaitForChild('Main', 10):WaitForChild('EXP_Counter', 10).Text
            local currentExp = Stuff.parseNumber(expText:match('EXP:%s*(.-)%s*/'))
            local NeedExp = CanPrestige and 0 or math.max(0, nextXP - currentExp)
            local CoinsText = LeftD:WaitForChild('Energy', 10):WaitForChild('Coins', 10):WaitForChild('Main', 10):WaitForChild('TextLabel', 10).Text
            local now = tick()
            local dt = math.max(now - getgenv().PrevStats.Time, 1) / 60
            local expPerMin = (currentExp - getgenv().PrevStats.Exp) / dt
            local lvlpercent = (currentExp / nextXP) * 100
            local lvlfilled = math.floor(lvlpercent / 10)
            if lvlfilled >= 10 then
                lvlfilled = 10
            end
            local lvlempty = 10 - lvlfilled
            if lvlempty >= 10 then
                lvlempty = 10
            elseif lvlempty <= 0 then
                lvlempty = 0
            end

            local lvlcolorbar = "**["..string.rep("🟩", lvlfilled)..string.rep("🟥", lvlempty).."] "..math.floor(lvlpercent + 0.5).."%**"

            getgenv().PrevStats.Exp = currentExp
            getgenv().PrevStats.Time = now
            local E = getgenv().EnergyInfo
            local description = table.concat({
                EJ.C ..'**' .. CoinsText .. '**',
                '*///////////*',
                EJ.R .. '**Rank: ' .. E.CurrentRank .. ' / '.. tostring(Max_Levels) .. '**',
                EJ.E .. '**Energy: '.. E.EnergyText .. (E.EnergyUntilRank > 0 and ' / ' .. Stuff.formatNumber(E.NextReq) .. '**' or '**'),
                '' .. E.ColoredBar ..'',
                '*///////////*',
                EJ.T .. '**Time to rank up: ' .. E.TimeToRankUp .. '**',
                '*///////////*',
                EJ.P .. '**Prestige: ' .. tostring(prestige) .. '**',
                EJ.L .. '**Level: '.. tostring(level) .. ' / ' .. tostring(LevelCap) .. '**',
                EJ.X .. '** EXP: ' .. Stuff.formatNumber(currentExp) .. ' / ' .. Stuff.formatNumber(nextXP) ..'**',
                '**' .. (CanPrestige and EJ.P .. 'Ready to Prestige**' or lvlcolorbar .. '**'),
                '*///////////*',
                '**Calculations:**',
                '*///////////*',       
                EJ.X .. '**EXP per minute: ' .. Stuff.formatNumber(expPerMin) .. '**',
                '*///////////*',
                EJ.E .. '**Energy per click: ' .. Stuff.formatNumber(E.EnergyPerClick) .. '**',
                EJ.E .. '**Energy per minute: ' .. E.EnergyPerMinute .. '**',
                EJ.E .. '**Energy per hour: ' .. E.EnergyPerHour .. '**',
                '*///////////*',
                '*Calculations might be wrong sometimes*\n',
            }, '\n')
            SendEmbed('**Notification for ' .. Player.Name .. '**', description, 0x00ff00)
        end)
        if not success then
            print("[AE Helper] An error occurred:", errorOrValue, "\n Please send it to @rosel4k on discord")
        end
    end

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
        EnergyPara2:SetDesc(Stuff.formatNumber(E.EnergyUntilRank) )
        EnergyPara3:SetDesc(Stuff.formatNumber(E.EnergyPerClick) )
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
            Stuff.ItemQuest("2301", "Punching_Machine")
        end
    })

    local FruitAuto = Tools:AddButton({
        Title = "Get Demon Fruit",
        Description = "",
        Callback = function()
            Stuff.ItemQuest("2302", "Demon_Fruit")
        end
    })
        
    local ExorcismAuto = Tools:AddButton({
        Title = "Perform Exorcism",
        Description = "",
        Callback = function()
            Stuff.ItemQuest("2303", "Exorcisms")
        end
    })
    local BentoAuto = Tools:AddButton({
        Title = "Get Lost Bento",
        Description = "",
        Callback = function()
            Stuff.ItemQuest("2305", "Lost_Bento_Box")
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
    local WavePara = Tools:AddParagraph({Title = "Leave Wave :",Content = ""})
    local WaveInput = Tools:AddInput("WaveInput", {
        Title = "Auto Leave Wave",
        Default = "",
        Placeholder = "Wave here",
        Numeric = false,
        Finished = true,
        Callback = function(Value)
            WavePara:SetDesc(Value)
            T.AutoLeaveWave = tostring(Value)
        end
    })
    local AutoJoinXmas = Tools:AddToggle("AutoJoinXmas", {Title = "Auto join\nIce Raid", Default = false })
    Options.AutoJoinXmas:OnChanged(function(Value)
        T.AutoJoinXmas = Value
        while T.AutoJoinXmas do task.wait(1)
            local Path = Player:WaitForChild('PlayerGui'):WaitForChild('Dungeon').Default_Header
            if Path.Main.Main.Visible and Path.Visible then
                local TextLabel = Path.Main.Main.Wave
                local Wave = tostring(T.AutoLeaveWave)
                if TextLabel.Text == 'Wave: '..Wave..'/1000' then
                    Stuff.Leave()
                end
            else
                Stuff.Join("Ice_Raid")
                task.wait(5)
            end
        end
    end)
    local AutoUpgX = Tools:AddToggle("AutoUpgX", {Title = "Auto upgrade Xmas", Default = false })
    Options.AutoUpgX:OnChanged(function(Value)
        T.AutoUpgX = Value
        while T.AutoUpgX do task.wait(1)
            Stuff.Upgrade("Christmas_Damage","Christmas_Damage_Upgrade")
            Stuff.Upgrade("Christmas_Materials","Christmas_Materials_Upgrade")
            Stuff.Upgrade("Christmas_Damage","Christmas_Damage_Upgrade_2")
        end
    end)
    local AutoXChest = Tools:AddToggle("AutoXChest", {Title = "Auto claim\nXmas chests", Default = false })
    Options.AutoXChest:OnChanged(function(Value)
        T.AutoXChest = Value
        while T.AutoXChest do task.wait(1)
            for _,name in pairs(RS.Chests) do task.wait(1)
                Stuff.ClaimChest(name)
            end
        end
    end)
    local GachaXmas = Tools:AddToggle("GachaXmas", {Title = "Auto roll\nXmas gacha", Default = false })
    Options.GachaXmas:OnChanged(function(Value)
        T.GachaXmas = Value
        while T.GachaXmas do task.wait(0.01)
            Stuff.Roll(5,"Christmas_Glove")
        end
    end)
    local StatResets = Tools:AddToggle("StatResets", {Title = "Auto buy Stat Resets (10k x2)", Default = false })
    Options.StatResets:OnChanged(function(Value)
        T.StatResets = Value
        while T.StatResets do task.wait(10)
            Stuff.Merchant(1,7,"Exchange_Shop_Products")
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
                RS.SelectedStat = PrimaryUpgrades[Value] or ""
            end
        end
    })
    local AutoUpgrade = Tools:AddToggle("AutoUpgrade", {Title = "Auto Put Points", Default = false })
    Options.AutoUpgrade:OnChanged(function(Value)
        T.AutoUpgrade = Value
        while T.AutoUpgrade do task.wait(0.1)
            Stuff.Assign(RS.SelectedStat,1)
        end
    end)

    
    local RarityDrop = Tools:AddDropdown("RarityDropdown", {
        Title = "Select Rarity\nTo Delete",
        Description = "",
        Values = RS.Rarities,
        Multi = true,
        Default = {},
        Callback = function(Value)
            local SelectedRarities = {}
            RS.SelectedRarityDel = {}
            for i,v in pairs(Value) do
                if not table.find(SelectedRarities, i) then
                    table.insert(SelectedRarities, i)
                end
            end
            for _, rarity in ipairs(SelectedRarities) do
                local num = RarityToNumber[rarity]
                if num and not table.find(RS.SelectedRarityDel, num) then
                    table.insert(RS.SelectedRarityDel, num)
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
                    if v.Stats and v.Stats.Energy and not v.Locked and not v.Equipped and table.find(RS.SelectedRarityDel, v.Rarity) then
                        table.insert(ToDelete, i)
                    end
                end
            end
            if #ToDelete > 0 then
                Stuff.PetsDelete(ToDelete)
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

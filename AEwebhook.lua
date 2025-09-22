local V = getgenv().Values
local Players = game:GetService('Players')
local Player = Players.LocalPlayer
local HttpService = game:GetService('HttpService')
local TCS = game:GetService('TextChatService')

local WEBHOOK_USERNAME = 'Anime Eternal Notificator'
local WEBHOOK_AVATAR = 'https://i.imgur.com/SX41gmf.png'

local AVATAR_RARITY_MAP = {
    S   = {label = "MYTHICAL", color = 0xff0000},
    SS  = {label = "PHANTOM",  color = 0x5b00b5},
    SSS = {label = "SUPREME",  color = 0xff7100}
}

local function GetDropRarityColor(rarity)
    rarity = rarity:upper()
    if rarity == 'SUPREME' then
        return 0xff7100
    elseif rarity == 'PHANTOM' then
        return 0x5b00b5
    else
        return 0x00ff00
    end
end

local function SendEmbed(title, description, color)
    if not V.WebhookMode or V.WebhookURL == '' then return end
    local ts = os.time()
    local body = {
        content = nil,
        embeds = {{
            title = title,
            description = description .. '\n<t:' .. ts .. ':T>',
            color = color,
        }},
        username = WEBHOOK_USERNAME,
        avatar_url = WEBHOOK_AVATAR,
        attachments = {},
    }
    local success, err = pcall(function()
        request({
            Url = V.WebhookURL,
            Method = 'POST',
            Headers = {['Content-Type'] = 'application/json'},
            Body = HttpService:JSONEncode(body),
        })
    end)
    if not success then
        warn('Webhook send failed:', err)
    else
        print('Webhook sent:', title)
    end
end

local function ShouldPing(rarity)
    rarity = rarity:upper()
    return rarity == "SS" or rarity == "SSS" or rarity == "PHANTOM" or rarity == "SUPREME"
end

local function GetPing()
    if V.UserId and V.UserId ~= "" then
        return "<@" .. V.UserId .. ">"
    end
    return ""
end

local function ParseDropMessage(msg)
    local cleanMsg = msg:gsub('<[^>]->', '')
    local playerName, category, rarity, itemName = cleanMsg:match('(%S+) got a %[(.-)%]%s*(%S+)%s*(.+)')
    if playerName and playerName == Player.Name and category and rarity and itemName then
        local ping = ShouldPing(rarity) and GetPing() or ""
        local title = '**Notification for ' .. playerName .. '**'
        local description = string.format("%s **%s\n[%s] - %s | %s**", ping, rarity, category, rarity, itemName)
        SendEmbed(title, description, GetDropRarityColor(rarity))
    end
end

local function ParseAvatarDrop(msg)
    local cleanMsg = msg:gsub('<[^>]->', '')
    local playerName, category, rank, itemName = cleanMsg:match('(%S+) got a (%[.-%]) RANK (%S+) %[Av%]%s*(.+)')
    if playerName and playerName == Player.Name and category and rank and itemName then
        local data = AVATAR_RARITY_MAP[rank:upper()]
        if data then
            local ping = GetPing()
            local description = string.format("%s **%s\n%s - %s | %s**", ping, data.label, category, rank, itemName)
            return {playerName = playerName, description = description, color = data.color}
        end
    end
    return nil
end

local function HandleMessage(msg)
    print('Chat detected:', msg)
    local avatarDrop = ParseAvatarDrop(msg)
    if avatarDrop then
        local title = '**Notification for ' .. avatarDrop.playerName .. '**'
        SendEmbed(title, avatarDrop.description, avatarDrop.color)
        return
    end

    ParseDropMessage(msg)
end

if TCS then
    local function ConnectChannel(channel)
        print('Connected to channel:', channel.Name)
        channel.MessageReceived:Connect(function(message)
            if message.Text then
                HandleMessage(message.Text)
            end
        end)
    end

    task.spawn(function()
        repeat task.wait() until TCS.TextChannels
        for _, channel in pairs(TCS.TextChannels:GetChildren()) do
            ConnectChannel(channel)
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
    if ChatGui then HookLegacyChat() end
end)

local function SendStats()
    local Gui = Player:WaitForChild('PlayerGui')
    local PlayerHUD = Gui:WaitForChild('PlayerHUD', 10)
    local LeftDisplays = Gui:WaitForChild('Main', 10):WaitForChild('Left_Side', 10):WaitForChild('Displays', 10)

    if not PlayerHUD or not LeftDisplays then
        warn('Stats GUI not loaded yet, skipping stats send')
        return
    end

    local LevelHud = PlayerHUD:WaitForChild('Player_Levels', 10):WaitForChild('Main', 10)
    local Coins = LeftDisplays:WaitForChild('Coins', 10):WaitForChild('Main', 10):WaitForChild('TextLabel', 10).Text
    local Energy = LeftDisplays:WaitForChild('Energy', 10):WaitForChild('Main', 10):WaitForChild('TextLabel', 10).Text
    local Rank = Player.leaderstats.Rank.Value
    local Level = LevelHud:WaitForChild('Current_Level', 10).Text
    local Exp = LevelHud:WaitForChild('EXP_Counter', 10).Text

    local title = '**Notification for ' .. Player.Name .. '**'
    local description = table.concat({'**' .. Coins .. '**','**' .. Energy .. '**','**Rank: ' .. Rank .. '**','**' .. Level .. ', ' .. Exp .. '**',}, '\n')
    SendEmbed(title, description, 0x00ff00)
end

SendStats()

task.spawn(function()
    while task.wait(V.WebhookTimer * 60) do
        SendStats()
    end
end)

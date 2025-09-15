local V = getgenv().Values
local Players = game:GetService('Players')
local Player = Players.LocalPlayer
local HttpService = game:GetService('HttpService')
local TCS = game:GetService('TextChatService')

local WEBHOOK_USERNAME = 'Anime Eternal Notificator'
local WEBHOOK_AVATAR = 'https://i.imgur.com/SX41gmf.png'

local function GetRarityColor(rarity)
    rarity = rarity:lower()
    if rarity == 'supreme' then
        return 0xff7100
    elseif rarity == 'phantom' then
        return 0x5b00b5
    else
        return 0x00ff00
    end
end

local function SendEmbed(title, description, color)
    if not V.WebhookMode or V.WebhookURL == '' then
        return
    end
    local ts = os.time()
    local body = {
        content = nil,
        embeds = {
            {
                title = title,
                description = description .. '\n<t:' .. ts .. ':T>',
                color = color,
            },
        },
        username = WEBHOOK_USERNAME,
        avatar_url = WEBHOOK_AVATAR,
        attachments = {},
    }
    local success, err = pcall(function()
        request({
            Url = V.WebhookURL,
            Method = 'POST',
            Headers = { ['Content-Type'] = 'application/json' },
            Body = HttpService:JSONEncode(body),
        })
    end)
    if not success then
        warn('Webhook send failed:', err)
    else
        print('Webhook sent:', title)
    end
end

local function ParseDropMessage(msg)
    local cleanMsg = msg:gsub('<[^>]->', '')
    local playerName, category, rarity, itemName =
        cleanMsg:match('(%S+) got a %[(.-)%]%s*(%S+)%s*(.+)')
    if playerName and category and rarity and itemName then
        print('Drop detected:', playerName, category, rarity, itemName)
        local title = '**Notification for ' .. playerName .. '**'
        local description =
            string.format('**%s**\n**[%s] - %s**', rarity, category, itemName)
        SendEmbed(title, description, GetRarityColor(rarity))
    end
end

local function HandleMessage(msg)
    print('Chat detected:', msg)
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
        repeat
            task.wait()
        until TCS.TextChannels
        for _, channel in pairs(TCS.TextChannels:GetChildren()) do
            ConnectChannel(channel)
        end
        TCS.TextChannels.ChildAdded:Connect(function(channel)
            ConnectChannel(channel)
        end)
    end)
end

local function HookLegacyChat()
    local ChatGui = Player:WaitForChild('PlayerGui'):WaitForChild('Chat')
    local Frame = ChatGui:WaitForChild('Frame')
        :WaitForChild('ChatChannelParentFrame')
        :WaitForChild('Frame_MessageLogDisplay')
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

local function SendStats()
    local Gui = Player:WaitForChild('PlayerGui')
    local PlayerHUD = Gui:WaitForChild('PlayerHUD', 10)
    local LeftDisplays = Gui:WaitForChild('Main', 10)
        :WaitForChild('Left_Side', 10)
        :WaitForChild('Displays', 10)
    if not PlayerHUD or not LeftDisplays then
        warn('Stats GUI not loaded yet, skipping stats send')
        return
    end
    local LevelHud = PlayerHUD:WaitForChild('Player_Levels', 10)
        :WaitForChild('Main', 10)
    local Coins = LeftDisplays:WaitForChild('Coins', 10)
        :WaitForChild('Main', 10)
        :WaitForChild('TextLabel', 10).Text
    local Energy = LeftDisplays:WaitForChild('Energy', 10)
        :WaitForChild('Main', 10)
        :WaitForChild('TextLabel', 10).Text
    local Rank = Player.leaderstats.Rank.Value
    local Level = LevelHud:WaitForChild('Current_Level', 10).Text
    local Exp = LevelHud:WaitForChild('EXP_Counter', 10).Text
    local title = '**Notification for ' .. Player.Name .. '**'
    local description = table.concat({
        '**' .. Coins .. '**',
        '**' .. Energy .. '**',
        '**Rank: ' .. Rank .. '**',
        '**' .. Level .. ', ' .. Exp .. '**',
    }, '\n')
    SendEmbed(title, description, 0x00ff00)
end

SendStats()

task.spawn(function()
    while task.wait(V.WebhookTimer * 60) do
        SendStats()
    end
end)

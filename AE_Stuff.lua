local ReplicatedStorage = game:GetService('ReplicatedStorage')
local InventoryEvent = ReplicatedStorage.Events.Inventory
local Event = ReplicatedStorage.Events.To_Server

getgenv().suffixList = {{'UNCENT',1e306},{'CENT',1e303},{'NONONGNTL',1e300},{'OTNONGNTL',1e297},{'SPNONGNTL',1e294},{'SXNONGNTL',1e291},{'QNNONGNTL',1e288},{'QTNONGNTL',1e285},{'TNONGNTL',1e282},{'DNONGNTL',1e279},{'UNONGNTL',1e276},{'NONGNTL',1e273},{'NVOTGNTL',1e270},{'OTOTGNTL',1e267},{'SPOTGNTL',1e264},{'SXOTGNTL',1e261},{'QNOTGNTL',1e258},{'QTOTGNTL',1e255},{'TOTGNTL',1e252},{'DOTGNTL',1e249},{'UOTGNTL',1e246},{'OTGNTL',1e243},{'NVSPTGNTL',1e240},{'OSPTGNTL',1e237},{'SPSPTGNTL',1e234},{'SXSPTGNTL',1e231},{'QNSPTGNTL',1e228},{'QTSPTGNTL',1e225},{'TSPTGNTL',1e222},{'DSPTGNTL',1e219},{'USPTGNTL',1e216},{'SPTGNTL',1e213},{'NVSXGNTL',1e210},{'OSXGNTL',1e207},{'SPSXGNTL',1e204},{'SXSXGNTL',1e201},{'QNSXGNTL',1e198},{'QTSXGNTL',1e195},{'TSXGNTL',1e192},{'DSXGNTL',1e189},{'USXGNTL',1e186},{'SXGNTL',1e183},{'NQQGNT',1e180},{'OQQGNT',1e177},{'SpQGNT',1e174},{'sxQGNT',1e171},{'QnQGNT',1e168},{'qdQGNT',1e165},{'tQGNT',1e162},{'dQGNT',1e159},{'uQGNT',1e156},{'qQGNT',1e153},{'NQDDr',1e150},{'OQDDr',1e147},{'SpQDR',1e144},{'sxQDR',1e141},{'QnQDR',1e138},{'qdQDR',1e135},{'tQDR',1e132},{'dQDR',1e129},{'uQDR',1e126},{'QdDR',1e123},{'NoTG',1e120},{'OcTG',1e117},{'SpTG',1e114},{'ssTG',1e111},{'QnTG',1e108},{'qtTG',1e105},{'tsTG',1e102},{'DTG',1e99},{'UTG',1e96},{'TGN',1e93},{'NVG',1e90},{'OVG',1e87},{'SPG',1e84},{'SeV',1e81},{'QnV',1e78},{'qtV',1e75},{'TVg',1e72},{'DVg',1e69},{'UVg',1e66},{'Vgn',1e63},{'NvD',1e60},{'OcD',1e57},{'SpD',1e54},{'sxD',1e51},{'QnD',1e48},{'qdD',1e45},{'tdD',1e42},{'DD',1e39},{'Ud',1e36},{'de',1e33},{'N',1e30},{'O',1e27},{'Sp',1e24},{'sx',1e21},{'Qn',1e18},{'qd',1e15},{'T',1e12},{'B',1e9},{'M',1e6},{'k',1e3}}
getgenv().RandomStuff = {
    WEBHOOK_AVATAR = 'https://i.imgur.com/SX41gmf.png',
    WEBHOOK_USERNAME = 'Anime Eternal Notificator',
    SelectedStat = "",
    SelectedRarityDel = {},
    SelectedRarities = {},
    PrimaryUpgrades = {["Damage"] = "Primary_Damage",["Energy"] = "Primary_Energy",["Coins"] = "Primary_Coins",["Luck"] = "Primary_Luck"},
    Rarities = {"Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Phantom", "Supreme", "Exotic"},
    Chests = {'Christmas_Tree_Chest','Ice_Chest','Santa_Chest','Christmas_Chest'},
    AVATAR_RARITY_MAP = {S = { label = 'MYTHICAL', color = 0xff0000 },SS = { label = 'PHANTOM', color = 0x5b00b5 },SSS = { label = 'SUPREME', color = 0xff7100 },SSSS = { label = 'EXOTIC', color = 0xff0000 }}
}

getgenv().Values = {
    WebhookURL = '',
    WebhookMode = false,
    WebhookTimer = 5,
    GameNotifications = false,
    UserId = '',
    NotifyRarities = {},
}

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
    NextRankReq = '',
}

getgenv().Toggles = {
    StatResets = false,
    DailyQuests = false,
    AutoDelete = false,
    Webhook = false,
    AutoUpgrade = false,
    AutoJoinXmas = false,
    AutoLeaveWave = 0,
    AutoUpgX = false,
    AutoXChest = false,
    GachaXmas = false,
    AutoProgX = false
}

getgenv().Emoji = {
    P = '<:Prestige:1450190176784617585>',
    E = '<:Energy:1450190062233849856>',
    T = '<:Time:1450190117925818462>',
    R = '<:Rank:1450187795577573426>',
    C = '<:Coins:1450189943434383532>',
    L = '<:Level:1450190159269068971>',
    X = '<:Xp:1450190137026674820>'
}



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

local Stuff = {}

function Stuff.GetDropColor(rarity)
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

function Stuff.Join(Raid)
    Event:FireServer({Action = '_Enter_Dungeon', Name = Raid})
end

function Stuff.Leave()
    Event:FireServer({Action = "Dungeon_Leave"})
end

function Stuff.Upgrade(Type,BenchName)
    Event:FireServer({Bench_Name = BenchName, Action = "_Progression", Upgrade_Name = Type})
end

function Stuff.ClaimChest(ChestName)
    Event:FireServer({Action = "_Chest_Claim", Name = ChestName})
end

function Stuff.Level(BenchName,UID)
    Evenf:FireServr({Bench_Name = BenchName, UniqueId = UID, Action = "Prog_Lv_Items", Upgrade_Name = "Level"})
end

function Stuff.ItemQuest(Id, Name)
    local Counter = 0

    local function Action(type)
        Event:FireServer({Id = Id, Type = type, Action = "_Quest"})
    end

    repeat
        Action("Accept")
        Counter = Counter + 1
        task.wait()
    until workspace:FindFirstChild(Name) or Counter >= 5

    local path = workspace:FindFirstChild(Name)
    if path and #path:GetChildren() > 0 then
        for _, v in ipairs(path:GetChildren()) do
            local promptFound = false
            for _, k in ipairs(v:GetDescendants()) do
                if k:IsA("ProximityPrompt") then
                    promptFound = true
                    k.MaxActivationDistance = math.huge
                    fireproximityprompt(k)
                    task.wait()
                    Action("Complete")
                    break
                end
            end
            if not promptFound then continue end
        end
    end
end

function Stuff.Roll(Amount, Gacha)
    Event:FireServer({Open_Amount = Amount, Action = "_Gacha_Activate", Name = Gacha})
end

function Stuff.Merchant(BuyAmount, PrdId, Bench)
    Event:FireServer({Amount = BuyAmount, Product_Id = PrdId, Action = "Merchant_Purchase", Bench_Name = Bench})
end

function Stuff.Assign(Stat, Amount)
    Event:FireServer({['Name'] = Stat, ['Action'] = 'Assign_Level_Stats', ['Amount'] = Amount})
end

function Stuff.PetsDelete(Table)
    InventoryEvent:FireServer({Selected = Table, Action = "Mass_Delete", Category = "Pets"})
end

function Stuff.formatTime(seconds)
    if not seconds or seconds == math.huge then
        return "∞"
    end

    local MAX_SECONDS = 30 * 24 * 60 * 60
    if seconds >= MAX_SECONDS then
        return "∞"
    end

    seconds = math.floor(seconds)
    local d = math.floor(seconds / 86400)
    seconds = seconds % 86400
    local h = math.floor(seconds / 3600)
    seconds = seconds % 3600
    local m = math.floor(seconds / 60)
    local s = seconds % 60

    if d > 0 then
        return string.format("%dd %dh %dm %ds", d, h, m, s)
    elseif h > 0 then
        return string.format("%dh %dm %ds", h, m, s)
    elseif m > 0 then
        return string.format("%dm %ds", m, s)
    else
        return string.format("%ds", s)
    end
end

function Stuff.parseNumber(str)
    if not str then
        return 0
    end
    local num, suf = str:match('([%d%.]+)(%a+)')
    if num and suf then
        for _, p in ipairs(getgenv().suffixList) do
            if p[1] == suf then
                return tonumber(num) * p[2]
            end
        end
    end
    return tonumber(str) or 0
end

function Stuff.formatNumber(n)
    local absn = math.abs(n)
    for _, p in ipairs(getgenv().suffixList) do
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

return Stuff

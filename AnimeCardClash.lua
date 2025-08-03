repeat wait() until game:IsLoaded()
-- Anti-AFK
local virtualUser = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    virtualUser:CaptureController()
    virtualUser:ClickButton2(Vector2.new())
end)

local DiscordURL = "https://discord.gg/sXuRPVBS"
-- Player and UI References
local localPlayer = game.Players.LocalPlayer
local userId = tostring(localPlayer.UserId)
local rootPart = localPlayer.Character.HumanoidRootPart
local rewardButton = localPlayer.PlayerGui.react.rewardsPopup["1"]

-- Remote Events
local remoteEvents = game:GetService("ReplicatedStorage")["shared/network@eventDefinitions"]
remoteEvents.setPartySlot:FireServer("slot_2")
-- Code Redeem List
local codeList = {"BUGFIXES2", "BUGFIXES1", "100MILLION1", "100MILLION2", "100MILLION3", "PATCH1", "PATCH2", "GLOBALBOSS4", "GLOBALBOSS3", "GLOBALBOSS2", "GLOBALBOSS1", "NEWHOTFIX12", "NEWHOTFIX11", "NEWHOTFIX10", "NEWHOTFIX9", "NEWHOTFIX8", "NEWHOTFIX7", "NEWHOTFIX6", "NEWHOTFIX5", "NEWHOTFIX3", "NEWHOTFIX4", "NEWHOTFIX1", "NEWHOTFIX2", "WELCOMETOACC", "ACCREWRITE", "NEWCODES", "LUCKBOOST", "UPDATESOON", "BUGFIX3", "BUGFIX", "BUGFIX2", "EMINENCEUPDATE", "HOTFIX10", "BUGFIXNOTUPDATE", "HOTFIX9", "HOTFIX8", "HOTFIX7", "THEUPDATE", "NOTTHEUPDATE", "100KLIKES", "HOTFIX6", "HOTFIX5", "HOTFIX3", "HOTFIX4", "HOTFIX1", "HOTFIX2", "10MILLION", "5MILLIONVISITS", "3MILLIONVISITS", "STPATRICKSDAY2025", "1MILLIONVISITS", "500KVISITS", "100KVISITS", "YAYCODES", "SORRYFORSHUTDOWN", "RELEASE"}

-- Game Variables
local explorationModes = {"easy", "medium", "hard", "extreme", "nightmare", "celestial"}
local defaultTeam = {["position_4"] = "green_bomber:gold", ["position_3"] = "green_bomber:gold", ["position_2"] = "green_bomber:gold", ["position_1"] = "green_bomber:gold"}
local towerModes = {"potion", "base", "nightmare"}
local towerNames = {"Potion Tower", "Infinite Tower", "Hardcore Tower", "Battle Tower"}
local towerFloors = {"Floor 1"}

for i = 5, 200, 5 do table.insert(towerFloors, "Floor " .. i) end

local namesOfStats = {"Luck", "Roll Speed", "Potion Duration", "Border Chance", "Boss Chance"}
local realNamesStats = {"luck", "cooldown_reduction", "potion_duration", "border_chance", "boss_chance"}
local Bools = {
    RollBool = false,
    BPBool = false,
    CollectBool = false,
    StatBool = false,
    ExplorationBool = false,
    TowerBool = false,
    GlobalBool = false,
    RewardsBool = false,
    PacksBool = false,
    RaidBool = false,
    PriorityBool = false}
-- Global Config
getgenv().RaidTeam= nil
getgenv().GlobalBossTeam = nil
getgenv().PotionTowerTeam = nil
getgenv().HardcoreTowerTeam = nil
getgenv().InfiniteTowerTeam = nil
getgenv().BattleTowerTeam = nil

-- Local State
local selectedTowerMode = nil
local selectedTowerFloor = nil
local selectedStatType = nil
local activeTowerFloor = nil
local availablePotions = {}
local availableCards = {}
local selectedRaidMode = nil



-- Helper Functions
function floorLabelToNumber(label)
    local floor = tonumber(label:match("Floor (%d+)"))
    return floor == 1 and 1 or ((floor - 5) / 5) + 2
end

local function ClickButton(button)
    local Signals = {
        "Activated",
        "MouseButton1Down",
        "MouseButton1Click",
        "MouseButton2Down",
        "MouseButton2Click"
    }

    if button:IsA("TextButton") or button:IsA("ImageButton") then
        for _, Signal in ipairs(Signals) do
            local signalObj = button[Signal]
            if typeof(signalObj) == "RBXScriptSignal" then
                firesignal(signalObj)
            end
        end
    else
        warn("Provided instance is not a TextButton or ImageButton.")
    end
end

-- UI Icons
local UIIcons = {
    checkmark = "rbxassetid://11242915840",
    gear = "rbxassetid://7059346386",
    settings = "rbxassetid://6953992694"
}

-- Load UI
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

-- Window
local mainWindow = WindUI:CreateWindow({
    Title = "Anime Card Clash",
    Icon = "door-open",
    Author = "Magenta",
    Folder = "Magenta",
    Size = UDim2.fromOffset(580, 460),
    Transparent = false,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 200,
    Background = "",
    BackgroundImageTransparency = 0,
    HideSearchBar = false,
    ScrollBarEnabled = false,
    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function() end,
    },
})

-- Tabs
local mainTab = mainWindow:Tab({Title = "Main", Icon = "", Locked = false})
local miscTab = mainWindow:Tab({Title = "Misc", Icon = "", Locked = false})

-- Toggles
mainTab:Toggle({
    Title = "Auto Roll Card",
    Desc = "Roll Cards",
    Icon = "check",
    Type = "Checkbox",
    Default = false,
    Callback = function(enabled)
        Bools.RollBool = enabled
        while Bools.RollBool do task.wait()
            pcall(function()
                remoteEvents.setSetting:FireServer("quick_roll", true)
                remoteEvents.setSetting:FireServer("auto_roll", true)
            end)
            wait(10)
        end
    end
})

mainTab:Toggle({
    Title = "Auto Collect",
    Desc = "BP rewards",
    Icon = "check",
    Type = "Checkbox",
    Default = false,
    Callback = function(bpenable)
        Bools.BPBool = bpenable
        while Bools.BPBool do task.wait(5)
            pcall(function()
                remoteEvents.claimAllBattlepassLevels:FireServer()
            end)
        end
    end
})

mainTab:Toggle({
    Title = "Auto Collect",
    Desc = "For boxes, potions",
    Icon = "check",
    Type = "Checkbox",
    Default = false,
    Callback = function(CollectDrops)
        Bools.CollectBool = CollectDrops
        while Bools.CollectBool do task.wait(3)
            for _, d in ipairs(workspace:GetDescendants()) do
                if d:IsA("TouchTransmitter") then
                    local p, gp = d.Parent, d.Parent and d.Parent.Parent
                    local ggp = gp and gp.Parent
                    if gp and ggp == workspace then
                        local name = gp.Name
                        if (name:find("box_") or name:find("potion_")) and name ~= "potion_tower" then
                            firetouchinterest(rootPart, p, 0)
                            firetouchinterest(rootPart, p, 1)
                        end
                    end
                end
            end
        end
    end
})


mainTab:Dropdown({
    Title = "Select Stat",
    Description = "To upgrade",
    Values = namesOfStats,
    Value = "",
    Callback = function(option)
        if option == "Luck" then
            selectedStatType = realNamesStats[1]
        elseif option == "Roll Speed" then
            selectedStatType = realNamesStats[2]
        elseif option == "Potion Duration" then
            selectedStatType = realNamesStats[3]
        elseif option == "Border Chance" then
            selectedStatType = realNamesStats[4]
        elseif option == "Boss Chance" then
            selectedStatType = realNamesStats[5]
        end
    end
})
mainTab:Toggle({
    Title = "Auto upgrade",
    Desc = "For stats",
    Icon = "check",
    Type = "Checkbox",
    Default = false,
    Callback = function(StatEn)
        Bools.StatBool = StatEn
        while Bools.StatBool do task.wait(1)
            remoteEvents.allocateUpgradePoint:FireServer(selectedStatType)
        end
    end
})

mainTab:Toggle({
    Title = "Exploration Bypass",
    Desc = "Starts every exploration",
    Icon = "check",
    Type = "Checkbox",
    Default = false,
    Callback = function(ExpEnable)
        Bools.ExplorationBool = ExpEnable
        while Bools.ExplorationBool do task.wait(10)
            for _, difficulty in ipairs(explorationModes) do
                remoteEvents.startExploration:FireServer(difficulty, defaultTeam)
                remoteEvents.claimExploration:FireServer(difficulty)
            end
        end
    end
})

mainTab:Dropdown({
    Title = "Select Tower",
    Values = towerNames,
    Value = "",
    Callback = function(option)
        selectedTowerMode = option
    end
})

mainTab:Dropdown({
    Title = "Select Floor",
    Description = "For battle tower",
    Values = towerFloors,
    Value = "",
    Callback = function(option)
        selectedTowerFloor = option
    end
})

local TowerFarm = mainTab:Toggle({
    Title = "Auto Tower",
    Desc = "Starts tower",
    Icon = "check",
    Type = "Checkbox",
    Default = false,
    Callback = function(TowerEnable)
        Bools.TowerBool = TowerEnable
        while Bools.TowerBool do task.wait(5)
            if selectedTowerMode == towerNames[1] and Bools.TowerBool then
                remoteEvents.fightInfinite:FireServer(towerModes[1])
            elseif selectedTowerMode == towerNames[2] and Bools.TowerBool then
                remoteEvents.fightInfinite:FireServer(towerModes[2])
            elseif selectedTowerMode == towerNames[3] and Bools.TowerBool then
                remoteEvents.fightInfinite:FireServer(towerModes[3])
            elseif selectedTowerMode == towerNames[4] and Bools.TowerBool then
                local floorIndex = floorLabelToNumber(selectedTowerFloor)
                remoteEvents.fightTowerWave:FireServer(tonumber(floorIndex))
            end
        end
    end
})


local GlobalFarm = mainTab:Toggle({
    Title = "Auto Global",
    Desc = "Global boss",
    Icon = "check",
    Type = "Checkbox",
    Default = false,
    Callback = function(globalenable)
        Bools.GlobalBool = globalenable
        while Bools.GlobalBool do task.wait(5)
            remoteEvents.fightGlobalBoss:FireServer(383)
        end
    end
})

mainTab:Dropdown({
    Title = "Select Raid",
    Description = "",
    Values = {"Shadow Dragon", "Eternity Dragon"},
    Value = "",
    Callback = function(option)
        if option == "Shadow Dragon" then
            selectedRaidMode = 326
        elseif option == "Eternity Dragon" then
            selectedRaidMode = 329
        end
    end
})

local BossFarm = mainTab:Toggle({
    Title = "Auto Raid Boss",
    Desc = "",
    Icon = "check",
    Type = "Checkbox",
    Default = false,
    Callback = function(raidenable)
        Bools.RaidBool = raidenable
        while Bools.RaidBool do task.wait(5)
            remoteEvents.fightRaidBoss:FireServer(selectedRaidMode)
        end
    end
})
local PriorityTog = mainTab:Toggle({
    Title = "Auto tower + global",
    Desc = "",
    Icon = "check",
    Type = "Checkbox",
    Default = false,
    Callback = function(priority)
        Bools.PriorityBool = priority
        while Bools.PriorityBool do task.wait(5)
            local BossAvb = workspace.sky_king.sky_king:FindFirstChild("ProximityPrompt").Enabled
            if BossAvb then
                local Slot1 = game:GetService("Players").LocalPlayer.PlayerGui.react["1"].navigation.Deck["2"]
                ClickButton(Slot1)
                wait(1)
                local Slot2 = localPlayer.PlayerGui.react.deck.deck["2"]["3"].slot_2
                ClickButton(Slot2)
                wait(1)
                local Slot3 = localPlayer.PlayerGui.react.deck.deck["3"]:GetChildren()[5]["2"]["6"]
                ClickButton(Slot3)
                repeat task.wait(1)
                remoteEvents.fightGlobalBoss:FireServer(383)
                until not BossAvb or not Bools.PriorityBool
            elseif not BossAvb then
                local Slot1 = game:GetService("Players").LocalPlayer.PlayerGui.react["1"].navigation.Deck["2"]
                ClickButton(Slot1)
                wait(1)
                local Slot2 = localPlayer.PlayerGui.react.deck.deck["2"]["3"].slot_1
                ClickButton(Slot2)
                wait(1)
                local Slot3 = localPlayer.PlayerGui.react.deck.deck["3"]:GetChildren()[5]["2"]["6"]
                ClickButton(Slot3)
                repeat task.wait(1)
                if selectedTowerMode == towerNames[1] then
                    remoteEvents.fightInfinite:FireServer(towerModes[1])
                elseif selectedTowerMode == towerNames[2] then
                    remoteEvents.fightInfinite:FireServer(towerModes[2])
                elseif selectedTowerMode == towerNames[3] then
                    remoteEvents.fightInfinite:FireServer(towerModes[3])
                elseif selectedTowerMode == towerNames[4] then
                    local floorIndex = floorLabelToNumber(selectedTowerFloor)
                    remoteEvents.fightTowerWave:FireServer(tonumber(floorIndex))
                end
                until BossAvb or not Bools.PriorityBool
            end
        end
    end
})

miscTab:Toggle({
    Title = "Disable Roll UI",
    Desc = "",
    Icon = "check",
    Type = "Checkbox",
    Default = false,
    Callback = function(hidden)
        localPlayer.PlayerGui.react.rollCard.Enabled = not hidden
    end
})

miscTab:Toggle({
    Title = "Disable Rewards",
    Desc = "Notifications",
    Icon = "check",
    Type = "Checkbox",
    Default = false,
    Callback = function(enabled)
        while enabled do task.wait(0.3)
            firesignal(rewardButton.Activated, localPlayer)
        end
    end
})

miscTab:Button({
    Title = "Redeem Codes",
    Desc = "",
    Locked = false,
    Callback = function()
        for _, code in ipairs(codeList) do
            wait(0.1)
            remoteEvents:WaitForChild("redeemCode"):FireServer(code)
        end
    end
})

miscTab:Button({
    Title = "Copy Discord Invite",
    Desc = "",
    Locked = false,
    Callback = function()
        setclipboard(DiscordURL)
    end
})


repeat task.wait() until game:IsLoaded()
getgenv().Config = {
    WebhookURL = "",
    TimeToSend = 5,
    SelectedOres = {},
    SelectedItems = {},
    Items = {},
    Ores = {}
}
local C = getgenv().Config
if not C or not C.WebhookURL then return end

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local RS = game:GetService("ReplicatedStorage")
local LP = Players.LocalPlayer

local request = request or http_request or syn.request
if not request then return end

local VirtualUser = game:GetService("VirtualUser")
LP.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

local SharedData = RS.Shared.Data

for _,ore in pairs(SharedData.Ore:GetDescendants()) do
    if ore:IsA("ModuleScript") and not table.find(C.Ores, ore.Name) then
        table.insert(C.Ores,ore.Name)
    end
end
table.sort(C.Ores)

local Materials = require(SharedData.Materials)

for _,item in pairs(Materials.Items) do
    if not table.find(C.Items, item.Name) then
        table.insert(C.Items, item.Name)
    end
end
table.sort(C.Items)

local Suffixes = {{'T',1e12},{'B',1e9},{'M',1e6},{'k',1e3}}
local function formatNumber(n)
    for _,v in ipairs(Suffixes) do
        if math.abs(n) >= v[2] then
            return string.format("%.2f%s", n / v[2], v[1])
        end
    end
    return tostring(math.floor(n))
end

local function getXPProgressBar(text)
    local cur, max = text:match("XP:%s*(%d+)%/(%d+)")
    if not cur then
        return "**[🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥] 0%**"
    end
    cur, max = tonumber(cur), tonumber(max)
    local percent = math.clamp((cur / max) * 100, 0, 100)
    local filled = math.floor(percent / 10)
    return "**[" .. string.rep("🟩", filled) .. string.rep("🟥", 10 - filled) .. "] " .. math.floor(percent + 0.5) .. "%**"
end

local function getXPText()
    local gui = LP:WaitForChild("PlayerGui")
    local main = gui:WaitForChild("Main", 10)
    if not main then return "XP: 0/0" end
    local label = main:FindFirstChild("XPbarHover", true)
    label = label and label:FindFirstChildWhichIsA("TextLabel", true)
    return label and label.Text or "XP: 0/0"
end

local Knit = require(RS.Shared.Packages.Knit)
local PlayerController = Knit.GetController("PlayerController")

getgenv().PrevOres = getgenv().PrevOres or {}
getgenv().PrevItems = getgenv().PrevItems or {}
getgenv().PrevGold = getgenv().PrevGold

local function getItemAmount(inv, itemName)
    if not inv or not inv.Misc then return 0 end
    if typeof(inv.Misc[itemName]) == "number" then
        return inv.Misc[itemName]
    end
    for _,v in pairs(inv.Misc) do
        if typeof(v) == "table" and v.Name == itemName then
            return tonumber(v.Quantity) or 0
        end
    end
    return 0
end

local function SendWebhook(data, goldLine, oreLines, itemLines, xpText, progressBar)
    local ts = os.time()
    local desc = {
        goldLine,
        "*/////////*",
        "**Level: " .. data.Level .. "**",
        progressBar,
        "**Exp: " .. xpText .. "**",
        "*/////////*",
        "**Selected Ores:**",
        "*/////////*",
        table.concat(oreLines, "\n")
    }
    if #itemLines > 0 then
        table.insert(desc, "*/////////*")
        table.insert(desc, "**Selected Items:**")
        table.insert(desc, "*/////////*")
        table.insert(desc, table.concat(itemLines, "\n"))
    end
    table.insert(desc, "")
    table.insert(desc, "<t:" .. ts .. ":T>")
    table.insert(desc, "*made by @rosel4k*")
    pcall(function()
        request({
            Url = C.WebhookURL,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = HttpService:JSONEncode({
                embeds = {{
                    title = "**" .. LP.Name .. "'s Stats**",
                    description = table.concat(desc, "\n"),
                    color = 0xFFFFFF
                }},
                username = "The Forge Stats",
                avatar_url = "https://img.lightshot.app/GAVKVSoKTT2USQpmzFnJfw.png",
                attachments = {}
            })
        })
    end)
end

local function CollectAndSend()
    local data = PlayerController.Replica.Data
    local inv = data.Inventory or {}

    local goldNow = data.Gold or 0
    local prevGold = getgenv().PrevGold or goldNow
    local goldDiff = string.format(" [%+s]", formatNumber(goldNow - prevGold))
    local goldLine = "**Gold: " .. formatNumber(goldNow) .. goldDiff .. "**"
    getgenv().PrevGold = goldNow

    local oreLines = {}
    for _,ore in ipairs(C.SelectedOres or {}) do
        local cur = inv[ore] or 0
        local prev = getgenv().PrevOres[ore]
        local diff = prev and string.format(" [%+d]", cur - prev) or ""
        table.insert(oreLines,"**"..ore..": "..cur..diff.."**")
        getgenv().PrevOres[ore] = cur
    end

    local itemLines = {}
    for _,item in ipairs(C.SelectedItems or {}) do
        local cur = getItemAmount(inv, item)
        local prev = getgenv().PrevItems[item]
        local diff = prev and string.format(" [%+d]", cur - prev) or ""
        table.insert(itemLines,"**"..item..": "..cur..diff.."**")
        getgenv().PrevItems[item] = cur
    end

    local xpText = getXPText()
    SendWebhook(data, goldLine, oreLines, itemLines, xpText, getXPProgressBar(xpText))
end

PlayerController:Ready():andThen(function()
    CollectAndSend()
    while C.EnableWEB and task.wait(C.TimeToSend * 60) do
        CollectAndSend()
    end
end)

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "The Forge webhook by @rosel4k",
   Icon = 0,
   LoadingTitle = "The Forge Helper",
   LoadingSubtitle = "by @rosel4k",
   ShowText = "TF@rosel4k",
   Theme = "Default",
   ToggleUIKeybind = "K",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "rosel4k",
      FileName = "theforge"
   },
   KeySystem = false,
})

local Tab = Window:CreateTab("Settings", 4483362458)

local SettingSec = Tab:CreateSection("Webhook Settings")

local SendWebhook = Tab:CreateToggle({
   Name = "Activate webhook",
   CurrentValue = false,
   Flag = "Webhook",
   Callback = function(Value)
        C.EnableWEB = true
        CollectAndSend()
        while C.EnableWEB and task.wait(C.TimeToSend * 60) do
            CollectAndSend()
        end 
   end,
})

local WebTime = Tab:CreateSlider({
   Name = "Webhook timer",
   Range = {1, 30},
   Increment = 1,
   Suffix = "minutes",
   CurrentValue = 5,
   Flag = "WebTime",
   Callback = function(Value)
        C.TimeToSend = Value
   end,
})

local Input = Tab:CreateInput({
   Name = "Webhook URL",
   CurrentValue = "",
   PlaceholderText = "Input url",
   RemoveTextAfterFocusLost = false,
   Flag = "Weburl",
   Callback = function(Text)
        if string.find(Text, "https://discord.com/api/webhooks/") then
            C.WebhookURL = Text
        end
   end,
})

local ItemOreSec = Tab:CreateSection("Items/Ores Settings")

local OreDrop = Tab:CreateDropdown({
   Name = "Select Ore to Show",
   Options = C.Ores,
   CurrentOption = {},
   MultipleOptions = true,
   Flag = "Ores",
   Callback = function(Options)
        for i,v in pairs(Options) do
            print(i,v)
        end
   end,
})

local ItemDrop = Tab:CreateDropdown({
   Name = "Select Items to Show",
   Options = C.Items,
   CurrentOption = {},
   MultipleOptions = true,
   Flag = "Items",
   Callback = function(Options)
        for i,v in pairs(Options) do
            print(i,v)
        end
   end,
})

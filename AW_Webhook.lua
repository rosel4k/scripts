repeat task.wait() until game:IsLoaded()
local S = getgenv().Settings
local HttpService = game:GetService("HttpService")
local WEBHOOK_USERNAME = "Anime Weapons Notificator"
local WEBHOOK_AVATAR = "https://i.imgur.com/miwzA7x.png"

local Players = cloneref(game:GetService("Players"))
local PLR = Players.LocalPlayer
local PlrGUI = PLR.PlayerGui

local VirtualUser = game:GetService('VirtualUser')
local TeleportService = cloneref(game:GetService("TeleportService"))
local CoreGui = cloneref(game:GetService("CoreGui"))
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
        PLR:Kick("\n\nReconnecting...")
        task.wait(0.75)
        TeleportService:Teleport(game.PlaceId, PLR)
    else
        warn("[AutoReconnect] Player kicked — rejoining current instance...")
        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, PLR)
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


local suffixes = {"","K","M","B","T","Qa","Qi","Sx","Sp","Oc","No","Dc","Ud","Dd","Td","Qad","Qid","Sxd","Spd","Ocd","Nod","Dec","Und","Duo","Tri","Qua","Qui","Six","Sep","Oct","Nuo"}

local function FormatNumber(Number)
    if Number < 1000 then return tostring(Number) end
    local index = math.min(math.floor(math.log10(Number) / 3), #suffixes - 1)
    return math.floor((Number / (1000 ^ index)) * 100 + 0.5) / 100 .. suffixes[index + 1]
end

local function ParseFormatted(str)
    local numStr, suffix = str:match("([%d%.]+)(%a+)")
    for i, s in ipairs(suffixes) do
        if s == suffix then return tonumber(numStr) * (1000 ^ (i - 1)) end
    end
    return tonumber(numStr)
end

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

local function SendEmbed(title, desc)
    if not S.WebMode or S.WebURL == '' then return end
    local ts = os.time()
    local body = {
        content = "",
        embeds = {{ title = title, description = desc .. '\n<t:' .. ts .. ':T>\n*made by @rosel4k*', color = 0x5b00b5 }},
        username = WEBHOOK_USERNAME,
        avatar_url = WEBHOOK_AVATAR,
        attachments = {},
    }
    pcall(function()
        request({
            Url = S.WebURL,
            Method = 'POST',
            Headers = { ['Content-Type'] = 'application/json' },
            Body = HttpService:JSONEncode(body),
        })
    end)
end

while S.WebMode do
    if S.WebMode then
        pcall(function()
            local S = getgenv().Settings
            local Coins = PlrGUI.Screen.Hud.left.yen.text.Text
            local Mastery = PLR.leaderstats.Mastery.Value
            local Rank = PLR.leaderstats.Rank.Value
            local Fast = PlrGUI.Screen.Hud.botton.fast.enabled
            local CPS
            if Fast.Image == "rbxassetid://96188222717246" then
                CPS = 6.666
            elseif Fast.Image == "rbxassetid://137979607008446" then
                CPS = 5.000
            end
            local Required
            if tonumber(Rank) > 38 then
                Required = 30000 * (8.7 ^ Rank)
            else
                Required = 30000 * (8.4 ^ Rank)
            end
            local percent = (ParseFormatted(Mastery) / Required) * 100
            local filled = math.floor(percent / 10)
            local empty = 10 - filled
            if filled >= 10 then
                filled = 10
            end

        
            local coloredProgressBar = "**["..string.rep("🟩", filled)..string.rep("🟥", empty).."] "..math.floor(percent + 0.5).."%**"
            local MPC = "1"
            for _,C in pairs(game.Players.LocalPlayer.PlayerGui.Screen.Popups:GetDescendants()) do
                if C.Name == "image" and C.Image == "rbxassetid://135008180293316" then
                    MPC = C.Parent.text.Text:gsub("+", "")
                    break
                end
            end
            local MPS = ParseFormatted(MPC) * CPS
            local MPM = MPS * 60
            local NM = Required - ParseFormatted(Mastery)
            local STR = NM / MPS
            local TTR = formatTime(STR)
            if percent >= 100 then
                TTR = "Ready to rank up"
            end
            local desc = "**Coins: "..Coins.."**\n*//////////*\n**Rank: "..Rank.."**\n**Mastery: "..Mastery.." / "..FormatNumber(Required).."**\n"..coloredProgressBar.."\n*//////////*\n**Time to rank up: "..TTR.."**\n*//////////*\n**Mastery per click: "..MPC.."**\n**Mastery per second: "..FormatNumber(MPS).."**\n**Mastery per minute: "..FormatNumber(MPM).."**\n*//////////*"
            local title = "Notification for "..PLR.Name
            SendEmbed(title,desc)
            task.wait(S.WebTime*60)
        end)
    end
end

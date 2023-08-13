getgenv().truestat = true
while getgenv().truestat do
    pcall(function()
local player = game:GetService("Players").LocalPlayer
local container = player.PlayerGui.Menu.PagesContainer.Champions.container["1"].extra["1"]
local found = false
local name = "You don't have equipped champion"
local level = ""
local shiny = ""
for _, v in pairs(container:GetDescendants()) do
    if #v.Name == 36 then
    local championData = container[v.Name]

    if championData:FindFirstChild("3") then
        name = championData.upgradeName.Text
        level = championData.level.Text
        shiny = championData:FindFirstChild("1") and "Shiny" or "Not shiny"
        found = true
        end
    end
    end
local totalpower = player.leaderstats.Power.Value
local firstpath = player.PlayerGui.Menu.PagesContainer.Upgrades.container["1"]
local sword = firstpath.Sword.upgradeName.Text
local speed = firstpath.Speed.upgradeName.Text
local chakra = firstpath.Chakra.upgradeName.Text
local durability = firstpath.Durability.upgradeName.Text
local strength = firstpath.Strength.upgradeName.Text
local yen = player.PlayerGui.Menu.RightFrame.Yen.currencyAmount.Text
local chikara = player.PlayerGui.Menu.RightFrame.Chikara.currencyAmount.Text
local function formatNumber(number)
    local suffixes = {"", "K", "M", "B", "T"}
    local index = 1
    while number >= 1000 and index < #suffixes do
        number = number / 1000
        index = index + 1
    end
    return string.format(index == 1 and "%.0f" or "%.1f%s", number, suffixes[index])
end
local function getValue(text)
    local numericValue, multiplier = text:match("([%d%.]+)(%a+)")
    local multiplierValue = { T = 1e12, B = 1e9, M = 1e6, K = 1e3 }
    return tonumber(numericValue) * (multiplierValue[multiplier] or 1)
end
local powerValue = player.leaderstats.Power.Value
local savedValue = getValue(powerValue)
wait(60)
powerValue = player.leaderstats.Power.Value
local totalValue = getValue(powerValue)
local savedAfterMinute = totalValue - savedValue
local powerperminute = formatNumber(savedAfterMinute)
local powerperhour = formatNumber(savedAfterMinute * 60)
local powerper10hours = formatNumber(savedAfterMinute * 60 * 10)
local response = request({
                Url = getgenv().WebhookURL,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = game.HttpService:JSONEncode({
                    content = "",
                    embeds = {
                        {
                            title = "Stats sender",
                            description = tostring(player.Name).." stats:",
                            color = 16711680,
                            fields = {
                                {
                                    name = "You have: ",
                                    value = yen.." Yen"
                                },
                                {
                                    name = "You have: ",
                                    value = chikara.." Chikara"
                                },
                                {
                                    name = "Total power is: ",
                                    value = totalpower
                                },
                                {
                                    name = "Strength power: ",
                                    value = strength
                                },
                                {
                                    name = "Durability power: ",
                                    value = durability
                                },
                                {
                                    name = "Chakra power: ",
                                    value = chakra
                                },
                                {
                                    name = "Sword power: ",
                                    value = sword
                                },
                                {
                                    name = "Speed power: ",
                                    value = speed
                                },
                                {
                                    name = "Power per minute: ",
                                    value = powerperminute
                                },
                                {
                                    name = "Power per hour: ",
                                    value = powerperhour
                                },
                                {
                                    name = "Power per 10 hours: ",
                                    value = powerper10hours
                                },
                                {
                                    name = "Name of equipped champion: ",
                                    value = name
                                },
                                {
                                    name = "Level of equipped champion: ",
                                    value = level
                                },
                                {
                                    name = "Shiny or not: ",
                                    value = shiny
                                }
                            }
                        }
                    },
                    username = "kys",
                    avatar_url = "https://cdn.discordapp.com/attachments/1006708294242545664/1121516763151077507/image.png",
                    attachments = {}
                })
            }) 
end)
wait((getgenv().MinutesBetweenMessages - 1 )* 60)
end

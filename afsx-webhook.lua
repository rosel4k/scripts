getgenv().truestat = true
while getgenv().truestat do
    pcall(function()
local container = game:GetService("Players").LocalPlayer.PlayerGui.Menu.PagesContainer.Champions.container["1"].extra["1"]
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
local totalpower = game:GetService("Players").LocalPlayer.leaderstats.Power.Value
local firstpath = game:GetService("Players").LocalPlayer.PlayerGui.Menu.PagesContainer.Upgrades.container["1"]
local sword = firstpath.Sword.upgradeName.Text
local speed = firstpath.Speed.upgradeName.Text
local chakra = firstpath.Chakra.upgradeName.Text
local durability = firstpath.Durability.upgradeName.Text
local strength = firstpath.Strength.upgradeName.Text
local yen = game:GetService("Players").LocalPlayer.PlayerGui.Menu.RightFrame.Yen.currencyAmount.Text
local chikara = game:GetService("Players").LocalPlayer.PlayerGui.Menu.RightFrame.Chikara.currencyAmount.Text
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
                            description = tostring(game:GetService("Players").LocalPlayer.Name).." stats:",
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
                                    name = "Name of champion: ",
                                    value = name
                                },
                                {
                                    name = "Level of champion: ",
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
wait(getgenv().MinutesBetweenMessages * 60)
end

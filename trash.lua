getgenv().truestat = true
while getgenv().truestat do
    pcall(function()
local player = game:GetService("Players").LocalPlayer
local TimeString = os.date("%H:%M:%S")
local container = player.PlayerGui.Menu.PagesContainer.Champions.container["1"].extra["1"]
local found = false
local name = "who knows, equip champion first"
local level = "Who knows, equip champion first"
local shiny = "Who knows, equip champion first"
local fruitstable = {"Gura", "Gomu", "Chop", "Mera", "Ice", "Magma"}
local path = game:GetService("Players").LocalPlayer.PlayerGui.Menu.PagesContainer.Inventory.container.pages.Specials["1"]
getgenv().magmaamount = "x0"
getgenv().guraamount = "x0"
getgenv().chopamount = "x0"
getgenv().meraamount = "x0"
getgenv().iceamount = "x0"
getgenv().gomuamount = "x0"
for i, v in pairs(path:GetDescendants()) do
    if v:IsA("TextLabel") and v.Name == "itemName" then
        if v.Text == "Gura" then
            getgenv().guraamount = v.Parent.itemAmount.Text
        elseif v.Text == "Gomu" then 
            getgenv().gomuamount = v.Parent.itemAmount.Text
        elseif v.Text == "Chop" then 
            getgenv().chopamount = v.Parent.itemAmount.Text
        elseif v.Text == "Mera" then 
            getgenv().meraamount = v.Parent.itemAmount.Text
        elseif v.Text == "Ice" then 
            getgenv().iceamount = v.Parent.itemAmount.Text
        elseif v.Text == "Magma" then 
            getgenv().magmaamount = v.Parent.itemAmount.Text
        end
    end
end
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
    local suffixes = {"", "K", "M", "B", "T", "Qd"}
    local index = 1
    while number >= 1000 and index < #suffixes do
        number = number / 1000
        index = index + 1
    end
    return string.format(index == 1 and "%.0f" or "%.1f%s", number, suffixes[index])
end
local function getValue(text)
    local numericValue, multiplier = text:match("([%d%.]+)(%a+)")
    local multiplierValue = {Qd = 1e15 ,T = 1e12, B = 1e9, M = 1e6, K = 1e3 }
    return tonumber(numericValue) * (multiplierValue[multiplier] or 1)
end
local powerValue = player.leaderstats.Power.Value
local yenValue = player.PlayerGui.Menu.RightFrame.Yen.currencyAmount.Text
local chikaraValue = player.PlayerGui.Menu.RightFrame.Chikara.currencyAmount.Text
local savedyen = getValue(yenValue)
local savedchikara = getValue(chikaraValue)
local savedValue = getValue(powerValue)
wait(60)
powerValue = player.leaderstats.Power.Value
yenValue = player.PlayerGui.Menu.RightFrame.Yen.currencyAmount.Text
chikaraValue = player.PlayerGui.Menu.RightFrame.Chikara.currencyAmount.Text
local totalValue = getValue(powerValue)
local totalYen = getValue(yenValue)
local totalChikara = getValue(chikaraValue)
local savedAfterMinute = totalValue - savedValue
local savedYenAfterMinute = totalYen - savedyen
local savedChikaraAfterMinute = totalChikara - savedchikara
local powerperminute = formatNumber(savedAfterMinute)
local powerperhour = formatNumber(savedAfterMinute * 60)
local powerperday = formatNumber(savedAfterMinute * 60 * 24)
local chikaraperminute = formatNumber(savedChikaraAfterMinute)
local chikaraperhour = formatNumber(savedChikaraAfterMinute * 60)
local chikaraperday = formatNumber(savedChikaraAfterMinute * 60 * 24)
local yenperminute = formatNumber(savedYenAfterMinute)
local yenperhour = formatNumber(savedYenAfterMinute * 60)
local yenperday = formatNumber(savedYenAfterMinute * 60 * 24)
local response = request({
    Url = getgenv().WebhookURL,
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = game.HttpService:JSONEncode({
        content = "**Stats Sender**",
        embeds = {
            {
                title = "Currencies:",
                description = "Chikara: "..chikara.."\nYen: "..yen,
                color = 60415,
                fields = {
                    {
                        name = "Power stats:",
                        value = "Total: "..totalpower.."\n"..strength.."\n"..durability.."\n"..chakra.."\n"..sword.."\n"..speed
                    },
                    {
                        name = "Equipped champion:",
                        value = "Name: "..name.."\nLevel: "..level.."\n"..shiny
                    },
                    {
                        name = "Calculations for stats",
                        value = "Total power, Chikara, Yen"
                    },
                    {
                        name = "Total power:",
                        value = "Per minute: "..powerperminute.."\nPer hour: "..powerperhour.."\nPer day: "..powerperday
                    },
                    {
                        name = "Chikara:",
                        value = "Per minute: "..chikaraperminute.."\nPer hour: "..chikaraperhour.."\nPer day:"..chikaraperday
                    },
                    {
                        name = "Yen:",
                        value = "Per minute: "..yenperminute.."\nPer hour: "..yenperhour.."\nPer day: "..yenperday
                    },
                    {
                        name = "Your fruits:",
                        value = "Magma: "..getgenv().magmaamount.."\nMera: "..getgenv().meraamount.."\nIce: "..getgenv().iceamount.."\nGura: "..getgenv().guraamount.."\nGomu: "..getgenv().gomuamount.."\nChop: "..getgenv().chopamount
                    }
                },
                author = {
                    name = tostring(player.Name).."'s stats:"
                },
                footer = {
                    text = "Made by @rosel4k (Rose)\nTime: "..TimeString
                }
            }
        },
        username = "Kill thyself",
        avatar_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQhJEzl_Agys-gAZ6A0RhONpI6cBZhrvkDIg&usqp=CAU",
        attachments = {}
    })
})
end)
wait((getgenv().MinutesBetweenMessages - 1 )* 60)
end 

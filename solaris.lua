local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Rosel4k | AFSX webhook", HidePremium = true, SaveConfig = false, ConfigFolder = "RoseHUB"})
local Tab1 = Window:MakeTab({Name = "Webhook"})
local Section1 = Tab1:AddSection({Name = "Select time to wait"})
local Section2 = Tab1:AddSection({Name = "Paste webhook link here"})
local Section3 = Tab1:AddSection({Name = "Activate webhook"})
local Section4 = Tab1:AddSection({Name = "Disable title screen"})
local waittime = 0
Section1:AddSlider({
	Name = "Select time to wait",
	Min = 0,
	Max = 60,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "minutes",
	Callback = function(MinutesBetweenMessages)
		waittime = tonumber(MinutesBetweenMessages)
	end    
})
if isfolder("RoseHub") and isfile("/RoseHub/afsx-webhook.txt") then
	getgenv().urlwebhook = readfile("/RoseHub/afsx-webhook.txt")
    if string.match(getgenv().urlwebhook, "https://discord.com/api/webhooks/") then
    OrionLib:MakeNotification({
        Name = "AFSX webhook (made by rosel4k)",
        Content = "Loaded saved webhook",
        Time = 5
    })
    elseif not string.match(getgenv().urlwebhook, "https://discord.com/api/webhooks/") then
        OrionLib:MakeNotification({
            Name = "AFSX webhook (made by rosel4k)",
            Content = "Saved webhook is corrupted, paste a new one",
            Time = 5
        })  
end
end
Section2:AddTextbox({
	Name = "Webhook link here",
	Default = "",
	TextDisappear = false,
	Callback = function(WebhookURL)
		getgenv().urlwebhook = WebhookURL
        if isfolder("RoseHub") and not isfile("/RoseHub/afsx-webhook.txt") then
            if string.match(getgenv().urlwebhook, "https://discord.com/api/webhooks/") then
            writefile("/RoseHub/afsx-webhook.txt", getgenv().urlwebhook)
            OrionLib:MakeNotification({
                Name = "AFSX webhook (made by rosel4k)",
                Content = "Created file to save webhook",
                Time = 5
            })
        elseif not string.match(getgenv().urlwebhook, "https://discord.com/api/webhooks/") then
            OrionLib:MakeNotification({
                Name = "AFSX webhook (made by rosel4k)",
                Content = "Webhook link is wrong, paste a new one",
                Time = 5
            })
        end
        elseif not isfolder("RoseHub") then
            makefolder("RoseHub")
            if string.match(getgenv().urlwebhook, "https://discord.com/api/webhooks/") then
            writefile("/RoseHub/afsx-webhook.txt", getgenv().urlwebhook)
            OrionLib:MakeNotification({
                Name = "AFSX webhook (made by rosel4k)",
                Content = "Created folder and file to save webhook",
                Time = 5
            })
            elseif not string.match(getgenv().urlwebhook, "https://discord.com/api/webhooks/") then
                OrionLib:MakeNotification({
                    Name = "AFSX webhook (made by rosel4k)",
                    Content = "Created folder, but webhook link is wrong, paste a new one",
                    Time = 5
                })
        end
        elseif isfolder("RoseHub") and isfile("/RoseHub/afsx-webhook.txt") then
            if string.match(getgenv().urlwebhook, "https://discord.com/api/webhooks/") then
                writefile("/RoseHub/afsx-webhook.txt", getgenv().urlwebhook)
                OrionLib:MakeNotification({
                    Name = "AFSX webhook (made by rosel4k)",
                    Content = "Updated file to save webhook",
                    Time = 5
                })
            elseif not string.match(getgenv().urlwebhook, "https://discord.com/api/webhooks/") then
                OrionLib:MakeNotification({
                    Name = "AFSX webhook (made by rosel4k)",
                    Content = "Webhook link is wrong, paste a new one",
                    Time = 5
                })
        end
	end	
end
})
local sender = false
Section3:AddToggle({
	Name = "Activate webhook",
	Default = false,
	Callback = function(Activated)
        sender = Activated
        if sender then
if getgenv().urlwebhook ~= nil and waittime ~= nil then
    OrionLib:MakeNotification({
        Name = "AFSX webhook (made by rosel4k)",
        Content = "Webhook was activated",
        Time = 10
})
elseif waittime == nil or getgenv().urlwebhook == nil then
    OrionLib:MakeNotification({
        Name = "AFSX webhook (made by rosel4k)",
        Content = "Your url or wait time input is empty/wrong",
        Time = 10
    })
end
while sender do
local playerchamps = require(game.ReplicatedStorage:WaitForChild("Infinity"))("Store"):getState().playerData["Champions"]
local equipped, champions, level, nameofchamp, shiny
local function capitalizeFirstLetter(str)
    return str:gsub("^%l", string.upper)
end
for key, champs in pairs(playerchamps) do
    if key == "inventory" then
        champions = champs 
    elseif key == "equipped" then
        equipped = champs
        for i, v in pairs(champions) do
            if i == equipped then
                for data, equip in pairs(v) do
                    if data == 'id' then
                        nameofchamp = equip
                        nameofchamp = capitalizeFirstLetter(nameofchamp:sub(2))
                    elseif data == "form" then
                        shiny = equip
                        shiny = capitalizeFirstLetter(shiny)
                    elseif data == 'level' then
                        level = equip
                    end
                end
            end
        end
    end
end
if nameofchamp == nil and level == nil and shiny == nil then
    nameofchamp = "Nothing is equipped"
    level = "No idea"
    shiny = "No idea"
end
getgenv().NameOfChamp =nameofchamp
getgenv().LevelOfChamp = level
getgenv().ShinyChamp = shiny
getgenv().magmaamount = "x0"
getgenv().guraamount = "x0"
getgenv().chopamount = "x0"
getgenv().meraamount = "x0"
getgenv().iceamount = "x0"
getgenv().gomuamount = "x0"
for i, v in pairs(require(game.ReplicatedStorage:WaitForChild("Infinity"))("Store"):getState().playerData["Inventory"]) do
    for i1,v1 in pairs(v) do
        if i1 == "chop" then
            getgenv().chopamount = "x"..v1
        elseif i1 == "gura" then
            getgenv().guraamount = "x"..v1
        elseif i1 == "mera" then
            getgenv().meraamount = "x"..v1
        elseif i1 == "ice" then
            getgenv().iceamount = "x"..v1
        elseif i1 == "gomu" then
            getgenv().gomuamount = "x"..v1
        elseif i1 == "magma" then
            getgenv().magmaamount = "x"..v1
    	end
    end
end
getgenv().statsboost = "00:00"
getgenv().chikaraboost = "00:00"
getgenv().yenboost = "00:00"
getgenv().luckboost =  "00:00"
getgenv().tournamentboost =  "00:00"
local playerboosts = require(game.ReplicatedStorage:WaitForChild("Infinity"))("Store"):getState().playerData["Boosts"]
local formattedstats,formattedyen,formattedchikara,formattedluck,formattedtourn
for i,v in pairs(playerboosts) do
	if i == 'TimeRemaining' and v ~= nil then
		for i2,v2 in pairs(v) do
			if i2 == "Stats" then
			local statsminutes = math.floor(v2 / 60)
			local statsseconds = v2 % 60
			formattedstats = string.format("%02d:%02d", statsminutes, statsseconds)	
            getgenv().statsboost = formattedstats
			elseif i2 == "Yen" then
			local yenminutes = math.floor(v2 / 60)
			local yenseconds = v2 % 60
			formattedyen = string.format("%02d:%02d", yenminutes, yenseconds)
            getgenv().yenboost = formattedyen
			elseif i2 == "Chikara" then
			local chikaraminutes = math.floor(v2 / 60)
			local chikaraseconds = v2 % 60
			formattedchikara = string.format("%02d:%02d", chikaraminutes, chikaraseconds)	
            getgenv().chikaraboost = formattedchikara
			elseif i2 == "Luck" then
			local luckminutes = math.floor(v2 / 60)
			local luckseconds = v2 % 60
			formattedluck = string.format("%02d:%02d", luckminutes, luckseconds)	
            getgenv().luckboost = formattedluck
			elseif i2 == "TournamentCoins" then
			local tounrminutes = math.floor(v2 / 60)
			local tournseconds = v2 % 60
			formattedtourn = string.format("%02d:%02d", tounrminutes, tournseconds)	
            getgenv().tournamentboost = formattedtourn
		end
	end
end
end
local function extractStats()
    local statValues = {}
    local playerStats = require(game.ReplicatedStorage:WaitForChild("Infinity"))("Store"):getState().playerData["Stats"]
    for i, v in pairs(playerStats) do
        for i1, v1 in pairs(v) do
            if i1 == "Stat" then
                table.insert(statValues, v1)
            end
        end
    end
    local durabilityValue = statValues[1]
    local speedValue = statValues[2]
    local swordValue = statValues[3]
    local strenValue = statValues[4]
    local chakraValue = statValues[5]
    getgenv().durabilityValue = statValues[1]
    getgenv().speedValue = statValues[2]
    getgenv().swordValue = statValues[3]
    getgenv().strenValue = statValues[4]
    getgenv().chakraValue = statValues[5] 
    return durabilityValue, speedValue, swordValue, strenValue, chakraValue
end
local function formatNumber(number)
    local suffixes = {"", "K", "M", "B", "T", "Qd"}
    local index = 1
    while number >= 1000 and index < #suffixes do
        number = number / 1000
        index = index + 1
    end
    return string.format(index == 1 and "%.2f" or "%.2f%s", number, suffixes[index])
end
local function retrieveStatValues()
    local playerData = require(game.ReplicatedStorage:WaitForChild("Infinity"))("Store"):getState().playerData["Stats"]
    local statValues = {}
    for i, v in pairs(playerData) do
        for i1, v1 in pairs(v) do
            if i1 == "Stat" then
                table.insert(statValues, v1)
            end
        end
    end
    return statValues
end
local function retrieveCurrencyValues()
    local playerData = require(game.ReplicatedStorage:WaitForChild("Infinity"))("Store"):getState().playerData["Currency"]
    local currencyValues = {
        Yen = nil,
        Chikara = nil
    }
    for i, v in pairs(playerData) do
        if i == "Yen" then
            currencyValues.Yen = v
        elseif i == "Chikara" then
            currencyValues.Chikara = v
        end
    end
    return currencyValues
end
local function calculateSum(values)
    local sum = 0
    for _, value in ipairs(values) do
        sum = sum + value
    end
    return sum
end
local initialStatValues = retrieveStatValues()
local initialSum = calculateSum(initialStatValues)
local initialCurrencyValues = retrieveCurrencyValues()
local initialYen = initialCurrencyValues.Yen
local initialChikara = initialCurrencyValues.Chikara
wait(60)
extractStats()
local sword = formatNumber(getgenv().swordValue)
local speed = formatNumber(getgenv().speedValue)
local chakra = formatNumber(getgenv().chakraValue)
local durability = formatNumber(getgenv().durabilityValue)
local strength = formatNumber(getgenv().strenValue)
local newStatValues = retrieveStatValues()
local newSum = calculateSum(newStatValues)
local difference = newSum - initialSum
local newCurrencyValues = retrieveCurrencyValues()
local newYen = newCurrencyValues.Yen
local newChikara = newCurrencyValues.Chikara
local yenDifference = newYen - initialYen
local chikaraDifference = newChikara - initialChikara
local powerperminute = formatNumber(difference)
local powerperhour = formatNumber(difference * 60)
local powerperday = formatNumber((difference) * 60 * 24)
local chikaraperminute = formatNumber(chikaraDifference)
local chikaraperhour = formatNumber(chikaraDifference * 60)
local chikaraperday = formatNumber(chikaraDifference * 60 * 24)
local yenperminute = formatNumber(yenDifference)
local yenperhour = formatNumber(yenDifference * 60)
local yenperday = formatNumber(yenDifference * 60 * 24)
local TimeString = os.date("%H:%M:%S")
local player = game:GetService("Players").LocalPlayer
OrionLib:MakeNotification({
    Name = "AFSX webhook (made by rosel4k)",
    Content = "Sending webhook",
    Time = 5
})
OrionLib:MakeNotification({
    Name = "To url: ",
    Content = getgenv().urlwebhook,
    Time = 5
})
local response = request({
    Url = getgenv().urlwebhook,
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = game.HttpService:JSONEncode({
        content = "**Stats Sender**",
        embeds = {
            {
                title = "Currencies:",
                description = "Chikara: "..formatNumber(newChikara).."\nYen: "..formatNumber(newYen),
                color = 60415,
                fields = {
                    {
                        name = "Power stats:",
                        value = "Total: "..formatNumber(newSum).."\nStrength: "..strength.."\nDurability: "..durability.."\nChakra: "..chakra.."\nSword: "..sword.."\nSpeed: "..speed
                    },
                    {
                        name = "Equipped champion:",
                        value = "Name: "..getgenv().NameOfChamp.."\nLevel: "..getgenv().LevelOfChamp.."\n"..getgenv().ShinyChamp
                    },
                    {
                        name = "Calculations Over Time",
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
                    },
                    {
                        name = "Your boosts:",
                        value = "Chikara: "..getgenv().chikaraboost.."\nYen: "..getgenv().yenboost.."\nStats: "..getgenv().statsboost.."\nLuck: "..getgenv().luckboost.."\nTournament coins: "..getgenv().tournamentboost
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
OrionLib:MakeNotification({
    Name = "AFSX webhook (made by rosel4k)",
    Content = "Webhook was sent successfully",
    Time = 5
})
wait((waittime - 1 ) * 60)
end
end
end})
Section4:AddButton({
	Name = "Disable title screen",
	Callback = function()
	game:GetService("Players").LocalPlayer.PlayerGui.Menu.Enabled = true
    game:GetService("Players").LocalPlayer.PlayerGui.TitleScreen.Enabled = false   
  	end    
})
OrionLib:Init()

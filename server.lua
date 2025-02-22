

local pingLimit = 200
local function checkPlayerPings()
    for _, playerId in ipairs(GetPlayers()) do
        local ping = GetPlayerPing(playerId)
        if ping > pingLimit then
            DropPlayer(playerId, "Dein Ping ist zu hoch. Du wurdest vom Server gekickt.")
        end
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(30000) 
        checkPlayerPings()
    end
end)

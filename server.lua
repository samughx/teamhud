local ESX = exports["es_extended"]:getSharedObject()

local function getteamler()
    local count = 0
    for _, playerId in ipairs(GetPlayers()) do
        local xPlayer = ESX.GetPlayerFromId(playerId)
        if xPlayer and (xPlayer.getGroup() == 'support' or
                        xPlayer.getGroup() == 'moderator' or
                        xPlayer.getGroup() == 'administrator' or
                        xPlayer.getGroup() == 'developer' or
                        xPlayer.getGroup() == 'manager' or
                        xPlayer.getGroup() == 'projektleitung') then
            count = count + 1
        end
    end
    return count
end

local function update()
    local count = getteamler()
    TriggerClientEvent('samugh:update', -1, count)
end

Citizen.CreateThread(function()
    while true do
        update()
        Citizen.Wait(1)
    end
end)
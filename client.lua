local ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('samugh:update')
AddEventHandler('samugh:update', function(count)
    SendNUIMessage({
        type = 'update',
        count = count
    })
end)

function samughrph(show)
    SetNuiFocus(show, show)
end

AddEventHandler('onResourceStart', function(resourceName)
    samughrph(true)
end)
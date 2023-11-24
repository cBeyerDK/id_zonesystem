AddEventHandler('id_zonesystem:respect:playerSellDrugs', function(time)
    if not Config.Respect.Enable then return end
    
    if not type(time) == 'number' then time = 10 end

    isSellingDrugs = true
    Citizen.CreateThread(function() Wait(time * 1000) isSellingDrugs = false end)
end)

RegisterNetEvent('id_zonesystem:zones:addBlipForOwner', function(coords)
    local Blip = AddBlipForRadius(coords, 100.0)
    SetBlipHighDetail(Blip, true)
    SetBlipColour(Blip, 1)
    SetBlipAlpha(Blip, 240)
    SetBlipAsShortRange(Blip, true)

    Citizen.Wait(Config.Zones.NotifyBlipTime * 1000)
    RemoveBlip(Blip)
end)
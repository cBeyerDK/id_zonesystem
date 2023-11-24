Utils = Utils or {}

function Utils:isPlayerInGang()
    if Config.UsingGangSystem then
        return exports['id_gangsystem']:getGangData() ~= nil
    else
        return true
    end
end

function Utils:getZoneName()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)

    return GetNameOfZone(playerCoords)
end
exports('getZoneName', Utils.getZoneName)
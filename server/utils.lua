Utils = Utils or {}

function Utils:DoesGangExist(name)
    if not name then return false end

    if Config.UsingGangSystem then
        return exports['id_gangsystem']:getGangByName(name)
    else
        return true
    end
end

function Utils:GetPlayerGang(src)
    if Config.UsingGangSystem then
        return exports['id_gangsystem']:getPlayerGang(src)
    else
        return {
            name = 'null'
        }
    end
end

function Utils:HasPlayerItem(src, itemName)
    if _FRAMEWORK == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(src)

        return xPlayer.getInventoryItem(itemName).count > 0
    elseif _FRAMEWORK == 'QBCORE' then
        local ply = QBCore.Functions.GetPlayer(src)

        return ply.Functions.GetItemByName(itemName) ~= nil
    else
        --[[
            Denne funktion skal return om personen har itemmet
        ]]

        return true
    end
end

function Utils:GetAllPlayers()
    if _FRAMEWORK == 'ESX' then
        return ESX.GetPlayers()
    elseif _FRAMEWORK == 'QBCORE' then
        return QBCore.Functions.GetPlayers()
    else
        --[[
            Denne funktion skal return et table med alle spillers id
        ]]
        return GetPlayers()
    end
end
local AC = exports['id_core']:getACUtils()
local playerLoadEvent = 'id_core:playerLoaded'
if Core.Settings.Framework.Name == 'ESX' then playerLoadEvent = 'esx:playerLoaded' end
--[[
    if eventCode ~= serverEventCode then
        AC:PermBan(src, nil, 'TriggerServerEvent', GetCurrentResourceName())
        return
    end
]]

RegisterNetEvent('id_zonesystem:respect:addRespectPoint', function(zoneName, eventCode)
    if not Config.Respect.Enable then return end

    local src = source

    if eventCode ~= serverEventCode then
        AC:PermBan(src, nil, 'TriggerServerEvent', GetCurrentResourceName())
        return
    end

    local gang = Utils:GetPlayerGang(src)

    if gang then
        if zones[zoneName] then
            local zone = zones[zoneName]

            if not zone.gangs[gang.name] then
                addGangToZone(gang.name, zoneName)
                Wait(250)
            end

            if zone.gangs[gang.name].RP < Config.Respect.maxPoints then
                addZonePoint(gang.name, zoneName, 'RP', Config.Respect.earnPoints)
                TriggerClientEvent('id_notify:notify', src, {
                    message = _U('respect:got_respect', Core.Utils:GroupDigits(Config.Respect.earnPoints)),
                    type = 'info'
                })
            else
                TriggerClientEvent('id_notify:notify', src, {
                    message = _U('respect:max_points'),
                    type = 'error'
                })
            end
        end
    end
end)

AddEventHandler('id_zonesystem:zones:soldDrugs', function(gangName, zoneName, src)
    if Utils:DoesGangExist(gangName) and zones[zoneName] then
        local zone = zones[zoneName]

        if zone.gangs[gangName] then
            local item = nil

            if Config.Zones.Item.Enable then
                item = Config.Zones.Item.ItemName:gsub('{name}', gangName)

                if Config.Zones.Item.OnlyGang then
                    if not gangName == Utils:GetPlayerGang(src).name then return end
                    if not Utils:HasPlayerItem(src, item) then return end
                else
                    if not Utils:HasPlayerItem(src, item) then return end
                end
            end

            addZonePoint(gangName, zoneName, 'zone', Config.Zones.earnPoints)
            if zone.gangs[gangName].points < Config.Zones.maxPoints then
                TriggerClientEvent('id_notify:notify', src, {
                    message = _U('zones:gang_point', Config.Zones.earnPoints, Utils:GetZoneLabel(zoneName)),
                    type = 'info'
                })
            else
                TriggerClientEvent('id_notify:notify', src, {
                    message = _U('zones:gang_max_points', Utils:GetZoneLabel(zoneName)),
                    type = 'info'
                })
            end

            if zone.owner and zone.owner ~= gangName then
                removeZonePoint(zone.owner, zoneName, 'zone', Config.Zones.ownerLossPoints)

                if Config.Zones.Notify.Enable then
                    if Config.Zones.Notify.OnlyGang and not gangName == Utils:GetPlayerGang(src).name then return end
                    if Config.Zones.Notify.NeedItem and item and not Utils:HasPlayerItem(src, item) then return end

                    for k,v in pairs(Utils:GetAllPlayers()) do
                        local gang = Utils:GetPlayerGang(v)

                        if gang.name == zone.owner then
                            TriggerClientEvent('id_notify:notify', v, {
                                title = _U('zones:notify::label'),
                                message = _U('zones:notify::msg', Utils:GetZoneLabel(zoneName)),
                                type = 'info'
                            })

                            if Config.Zones.Notify.Blip then
                                TriggerClientEvent('id_zonesystem:zones:addBlipForOwner', v, GetEntityCoords(GetPlayerPed(src)))
                            end
                        end
                    end
                end
            end
        else
            addGangToZone(gangName, zoneName)
        end
    end
end)
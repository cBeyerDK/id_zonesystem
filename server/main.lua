serverEventCode = '3a3Hc5hvBHU$fqsS$m8XW=v4m#--6P2kCGpnPvrPKAnZkmC6CGSsXJmPZEmbTS37GQKLmz6Fm_V^LT3&#BdDvzdbj_vg*9VBUJ-G=afVLkKybB^-nWKe*H?!J!$4D--PW?tS^&529@uFsM_Z+aQ%=tr6aBav4pHz2vmKF&Y#JQ$PPM4sc7ku?QL=hg^T?_WkU?2-%#6Dh?5Y2__?SAgMX#3ktnR!8JaMXV76f2U-Ukz8@_k!u-X3xzBD!T6jD36_&&Agu@+gA$gsTL84!SVVdyEpQtWfKYkR_f&%@uUSPqnc2n5cuDB%MYhzzayVxbb*hxM&H8!!m_Q!wNVqS9Q9am*qg*&!B3Q=QmQQ5Chnw72A3+B@HeMEqA4+33a?Y4KXQ$-rk=Mtecgm^z9&C$uMw+*vmVD3P-jM7-2q$^nMBMcb+ab_Mvn?_m#X-6jnsfxn9%yDtC$T_TyR_t**2U4Dct+hxH#z_T5mR6a3_M*3$#S8Yvg*!Ph8g64w4pzFDk65P5Cu#HmTzLrKYw^97+4ykv4ZrKZ6%r^k677KU@*g^q7-M@HVTZbcv$+NdyRF5C7HR3pztY%-77ukQ$p?FEg%aQT*zbfR!qR5$9WEEGmFLmTb8^MdgPX7npf=kvTCTn=YMm4HNGNE3Vx2Dvz+gb_uhjxvwJs@@Ew8V2sb^BFc*+EVd8A5+5Kx7jJ5RNqQJmSCWvT^PkeF55rEqsus?*dyC=XMRQ&FdWmk_zK*FQHbmY7ex_SGT@7Qyv4$uXA+@BvRHt5tGNt6cmy&tYB^!Z526*=ZP=+m532PbcQZ79h5h^fVjEgjPHJHME?8J6$NpjbdqU!xf%2BS3e9tdBr29-kQy@U_km5%N6LAzwZ&Lt%j^bd75zS62Vg6MBbE^3k&bCUD?p%tS!nhG+5XpDAtbDBEF-^x49#NGau_&!J7qdKFjzS4^HbZ4APYr$+MgN?8NCVmEcb5FBj3cbj=aBRjkGaY=qz6Bb#vHSPbLXBk6knn?8w$J-a?Bc-X8zz$+LCkaJUWyxG+?DBL*8n2_aN6Z%XJ&TNNt!5rRwBW!gyux=$UNZTdH@GCqKy2zT^*zjQtrHPZ?EYheHPs5FkU+AbnBWMRg9sE=bXwFXwNd&=_Ncb$csZhd!vewUg%kUUfEBCRd#jVzkm9UhvLn@&^w=_M9SXnx-Z*XXkHkp!GLPg^4rDQqWv-3SZeu*3!dpmrk-SJ+4dh!HveEyw_9ZNsrpuF*5#aQfuaYp2aDxr?*&Q&^+WgUH@%pmY6&s_Yj%RGg!L^4^ewJxmp$ph-*p=Y6s8RrW6CsMy^zEeMnp$rU2Y-mCFGEpB&*L*9_4_=N&zma@GF?bqN$-X*KdyFfnsu!*_3^2^Nbe3&rswzedm5%kBdfKpjAgsxr$C^pDp4S?yt6+N-Z!*#^39bpktAx$_Zu!Xd5&wW=WumPw3VQ!WBLC_=526AfPeJunZUgzxbLEnf9B5g$rRAqbhCj_35Es!_5A%^XTNt8qp6sMZkkvX74=J-?4h#L*6JDU!wM*dJdNDWr$xR*+qP%wvw2tnVMEmhW^VcAWL$FZupfn!WjY2J5Kxhr^y#Zh$e$9b-bu8GEHjAR%LK*r^rh9CUxHf#MT83Pg6g@RjRbArMbdgAS3F!BQ3Jze4V%G=M9E+Kebf*s!VwHvAV^Tt*Fgr_&&s+8daTauE_cF*qzkc*ddkMn^UBmB@tb!PsjkNDV?-xgP7FwR#jYTYB2uCa!qk*%wg#GXcMV=jCr5hB$GzBH-xp?kh22S%V-?5N94t5Nq^JKkw+@Bktnx6=RgVd+svZ^K8uyj7BJvf*!EXKeHG29?Xjp+8rV5V9-fgXCF5$KfRSbefc9a2x5gCA2r@VCmSSHzkdbw&wJt4h!%X-s9MW9HHCExdh-?DGYjVzU-H$QS-RY9ptE6eRMzKa5xz*3x^V^%9bm@r3RMJ$nqA=D2352CH2YxP7T$J%2s8y-UG*5Ku&NLhX#WHHP!%7FzxnY4*=@9BBGM_S5h_F%Gwf$%rK#k**9mNu6KNzRBvSAa=rEbY@FBAB=9gj3uc9!-v'

--====================
--==    Variables   ==
--====================
zones = {}

--==================
--==    Timers    ==
--==================
CreateThread(function()
    local startTime = os.time()

    while true do
        local time = os.time()

        if time >= startTime + (60 * 60 * Config.Zones.lossTime) then
            startTime = os.time()
            for k,v in pairs(zones) do
                for gang,value in pairs(v.gangs) do
                    if value.points > 0 then
                        if Config.Respect.Enable and value.RP >= Config.Respect.minPoints then
                            value.points = value.points - Config.Zones.pointLoss * ((100 + Config.Respect.zoneLossMultiplier) / 100)
                        else
                            value.points = value.points - Config.Zones.pointLoss
                        end
                    end

                    if value.points < 0 then value.points = 0 end
                end
            end
        end

        Wait(1000)
    end
end)

if Config.Respect.Enable then
    CreateThread(function()
        local startTime = os.time()

        while true do
            local time = os.time()

            if time >= startTime + (60 * 60 * Config.Respect.lossTime) then
                startTime = os.time()
                for k,v in pairs(zones) do
                    for gang,value in pairs(v.gangs) do
                        if value.RP > 0 then
                            value.RP = value.RP - Config.Respect.pointLoss
                        end

                        if value.RP < 0 then value.RP = 0 end
                    end
                end
            end

            Wait(1000)
        end
    end)
end

--================
--==    Zones   ==
--================
Core:Ready(function()
    for k,v in pairs(Config.Zones.allowed) do
        zones[v] = {
            owner = nil,
            gangs = {},
            created = false
        }
    end

    exports.oxmysql:query('SELECT * FROM id_zones', {}, function(data)
        if data then
            for k,v in pairs(data) do
                if zones[v.name] then
                    zones[v.name] = {
                        owner = v.owner,
                        gangs = json.decode(v.gangs),
                        created = true
                    }
                end
            end

            for k,v in pairs(zones) do
                if not v.created then
                    v.created = true
                    exports.oxmysql:insert('INSERT INTO id_zones (name, owner, gangs) VALUES (?,?,?)', {k, v.owner, json.encode(v.gangs)}, function()
                        Core.Utils:Print('Created ZONE [^3'..k..'^7]')
                    end)
                end
            end
        end
    end)
end)

function setZoneOwner(gangName, zoneName)
    if Utils:DoesGangExist(gangName) and zones[zoneName] then
        local zone = zones[zoneName]

        if zone.gangs[gangName] then
            zone.owner = gangName

            exports.oxmysql:update('UPDATE id_zones SET owner = ? WHERE name = ?', {zone.owner, zoneName})
        end
    end
end

function addGangToZone(gangName, zoneName)
    if Utils:DoesGangExist(gangName) and zones[zoneName] then
        local zone = zones[zoneName]

        if not zone.gangs[gangName] then
            zone.gangs[gangName] = {
                RP = 0,
                points = 0
            }

            exports.oxmysql:update('UPDATE id_zones SET gangs = ? WHERE name = ?', {json.encode(zone.gangs), zoneName})
        end
    end
end

function addZonePoint(gangName, zoneName, type, amount)
    if Utils:DoesGangExist(gangName) and zones[zoneName] then
        local zone = zones[zoneName]

        if zone.gangs[gangName] then
            if type == 'RP' then
                if not Config.Respect.Enable then return end

                zone.gangs[gangName].RP = zone.gangs[gangName].RP + amount
                if zone.gangs[gangName].RP > Config.Respect.maxPoints then
                    zone.gangs[gangName].RP = Config.Respect.maxPoints
                end

                exports.oxmysql:update('UPDATE id_zones SET gangs = ? WHERE name = ?', {json.encode(zone.gangs), zoneName})
            else
                zone.gangs[gangName].points = zone.gangs[gangName].points + amount
                if zone.gangs[gangName].points >= Config.Zones.ownPoints then
                    if zone.owner then
                        for k,v in pairs(zone.gangs) do
                            if k ~= gangName then
                                if zone.gangs[gangName].points > v.points and zone.owner == k then
                                    setZoneOwner(gangName, zoneName)
                                    break
                                end
                            end
                        end
                    else
                        setZoneOwner(gangName, zoneName)
                    end
                end

                if zone.gangs[gangName].points > Config.Zones.maxPoints then
                    zone.gangs[gangName].points = Config.Zones.maxPoints
                end

                exports.oxmysql:update('UPDATE id_zones SET gangs = ? WHERE name = ?', {json.encode(zone.gangs), zoneName})
            end
        end
    end
end

function removeZonePoint(gangName, zoneName, type, amount)
    if Utils:DoesGangExist(gangName) and zones[zoneName] then
        local zone = zones[zoneName]

        if zone.gangs[gangName] then
            if type == 'RP' then
                if not Config.Respect.Enable then return end

                zone.gangs[gangName].RP = zone.gangs[gangName].RP - amount
                if zone.gangs[gangName].RP < 0 then
                    zone.gangs[gangName].RP = 0
                end

                exports.oxmysql:update('UPDATE id_zones SET gangs = ? WHERE name = ?', {json.encode(zone.gangs), zoneName})
            else
                zone.gangs[gangName].points = zone.gangs[gangName].points - amount
                if zone.gangs[gangName].points < 0 then
                    zone.gangs[gangName].points = 0
                end

                exports.oxmysql:update('UPDATE id_zones SET gangs = ? WHERE name = ?', {json.encode(zone.gangs), zoneName})
            end
        end
    end
end

function getZoneOwner(zoneName)
    if zones[zoneName] then
        local zone = zones[zoneName]
        return zone.owner
    end

    return nil
end
exports('getZoneOwner', getZoneOwner)

function getZoneSellBonus(gangName, zoneName, amount)
    if Utils:DoesGangExist(gangName) and zones[zoneName] then
        local zone = zones[zoneName]

        if zone.gangs[gangName] then
            if zone.owner == gangName and zone.gangs[gangName].points >= Config.Zones.sellBonusPoints then
                return math.floor(amount * (Config.Zones.sellBonusMultiplier / 100))
            end
        end
    end

    return nil
end
exports('getZoneSellBonus', getZoneSellBonus)
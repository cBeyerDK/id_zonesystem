Config = {}

--===================
--==    General    ==
--===================
--[[
    Distancen på hvor tæt på du skal være på en marker før den vises
    OBS: Skal være et decimal tal
    f.eks 25.0 - for 25
]]
Config.DrawDistance = 25.0

--[[
    Angiv om du bruger vores bandesystem
    Link: https://identity.tebex.io/package/5026176

    Bruger du ikke vores system, kan du implementerer dit eget i utils filerne
]]
Config.UsingGangSystem = false

--================
--==    Zones   ==
--================
Config.Zones = {}

-- Hvad er det maximale point en bande kan optjene i en zone? | -1 for unlimited
Config.Zones.maxPoints = 2250

-- Hvor mange point for at man ejer zonen?
Config.Zones.ownPoints = 2000

-- Hvor mange point skal man have for at få en salgs bonus?
Config.Zones.sellBonusPoints = 2000

-- Hvor mange procent eksta skal man få ud af sit salg? (I procent)
Config.Zones.sellBonusMultiplier = 20

-- Hvor når skal man miste point? (I timer) | Man mister `Config.Zones.pointLoss` hver `Config.Zones.lossTime` time hvis man har point.
Config.Zones.lossTime = 2 

-- Hvor mange point skal man miste?
Config.Zones.pointLoss = 50

-- Hvor mange point skal man få for et salg i en zone?
Config.Zones.earnPoints = 2

-- Hvor mange point skal man miste, hvis man ejer zonen en anden sælger i?
Config.Zones.ownerLossPoints = 1

--[[
    Om der skal bruges et item, før man kan få point i en zone
        [Enable]: Slå det til og fra
        [OnlyGang]: Om man skal være i et gang, for at få point, når man har itemmet
        [ItemName]: Navnet på itemmet. (Du kan bruge `{name}` for at få bandens navn i itemmet)
]]
Config.Zones.Item = {
    Enable = true,
    OnlyGang = true,
    ItemName = 'gang_phone_{name}'
}

--[[
    Om der skal gives en notifkation til ejeren af zonen, når en anden bande sælger i den
        [Enable]: Slå det til og fra
        [Blip]: Om der skal være en blip, fra stedet der blev solgt
        [OnlyGang]: Om personen der sælger skal være i en bande - før der bliver sendt en notifikation
        [NeedItem]: Om personen der sælger skal have itemmet fra `Config.Zones.Item` - før at der bliver sendt en notifikation
]]
Config.Zones.Notify = {
    Enable = true,
    Blip = true,
    OnlyGang = true,
    NeedItem = true
}

-- Hvor langtid det tager før at notifikations blippen forsvinder (I sekunder)
Config.Zones.NotifyBlipTime = 10

-- Hvilke zoner kan man optjene point i?
-- Liste over zoner findes i `sh_utils.lua`
Config.Zones.allowed = {
    'AIRP',
    'ALAMO',
    'ALTA',
    'ARMYB',
    'BANHAMC',
    'BANNING',
    'BEACH',
    'BHAMCA',
    'BRADP',
    'BRADT',
    'BURTON',
    'CALAFB',
    'CANNY',
    'CCREAK',
    'CHAMH',
    'CHIL',
    'CHU',
    'CMSW',
    'CMSW',
    'CYPRE',
    'DAVIS',
    'DELBE',
    'DELPE',
    'DELSOL',
    'DESRT',
    'DOWNT',
    'DTVINE',
    'EAST_V',
    'EBURO',
    'ELGORL',
    'ELYSIAN',
    'GALFISH',
    'GOLF',
    'GRAPES',
    'GREATC',
    'HARMO',
    'HAWICK',
    'HORS',
    'HUMLAB',
    'JAIL',
    'KOREAT',
    'LACT',
    'LAGO',
    'LDAM',
    'LEGSQU',
    'LMESA',
    'LOSPUER',
    'MIRR',
    'MORN',
    'MOVIE',
    'MTCHIL',
    'MTGORDO',
    'MTJOSE',
    'MURRI',
    'NCHU',
    'NOOSE',
    'OCEANA',
    'PALCOV',
    'PALETO',
    'PALFOR',
    'PALHIGH',
    'PALMPOW',
    'PBLUFF',
    'PBOX',
    'PROCOB',
    'RANCHO',
    'RGLEN',
    'RICHM',
    'ROCKF',
    'RTRAK',
    'SANAND',
    'SANCHIA',
    'SANDY',
    'SKID',
    'SLAB',
    'STAD',
    'STRAW',
    'TATAMO',
    'TERMINA',
    'TEXTI',
    'TONGVAH',
    'TONGVAV',
    'VCANA',
    'VESP',
    'VINE',
    'WINDF',
    'WVINE',
    'ZANCUDO',
    'ZP_ORT',
    'ZQ_UAR'
}

--===================
--==    Respect    ==
--===================
Config.Respect = {}

-- Om respect systemet skal være aktivt eller ej
Config.Respect.Enable = true

-- Skal det kun være melee våben der kan bruges til at få respect?
Config.Respect.onlyMeleeWeps = true

-- Hvor langt fra npcen skal man være før man kan få respect fra dem?
Config.Respect.radius = 1.0

-- Hvor lang tid tager det at få respect? (I sekunder)
Config.Respect.time = 5

-- Hvor langtid skal det gå før du kan få respekt fra det samme ped igen? (I sekunder)
Config.Respect.pedCooldown = 15

-- Animationer der bliver spillet når man får respect
Config.Respect.Anims = {
    player = {
        dict = 'anim@mp_player_intcelebrationmale@cut_throat',
        name = 'cut_throat'
    },
    npc = {
        dict = 'random@domestic',
        name = 'f_distressed_loop'
    }
}

-- Det maximale antal respect points
Config.Respect.maxPoints = 100

-- Hvor mange point skal man få ved hvert respect?
Config.Respect.earnPoints = 1

-- Hvor mange point skal man være under for at man mister flere point i sin zone?
Config.Respect.minPoints = 30

-- Hvor mange gange flere point skal man miste i zonen? (I procent)
Config.Respect.zoneLossMultiplier = 20

-- Hvor når skal man miste point? (I timer) | Man mister `Config.Respect.pointLoss` hver `Config.Respect.lossTime` time, hvis man har under `Config.Respect.minPoints` point.
Config.Respect.lossTime = 2

-- Hvor mange point skal man miste?
Config.Respect.pointLoss = 5
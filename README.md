██╗██████╗░███████╗███╗░░██╗████████╗██╗████████╗██╗░░░██╗  ░██████╗████████╗░█████╗░██████╗░███████╗
██║██╔══██╗██╔════╝████╗░██║╚══██╔══╝██║╚══██╔══╝╚██╗░██╔╝  ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝
██║██║░░██║█████╗░░██╔██╗██║░░░██║░░░██║░░░██║░░░░╚████╔╝░  ╚█████╗░░░░██║░░░██║░░██║██████╔╝█████╗░░
██║██║░░██║██╔══╝░░██║╚████║░░░██║░░░██║░░░██║░░░░░╚██╔╝░░  ░╚═══██╗░░░██║░░░██║░░██║██╔══██╗██╔══╝░░
██║██████╔╝███████╗██║░╚███║░░░██║░░░██║░░░██║░░░░░░██║░░░  ██████╔╝░░░██║░░░╚█████╔╝██║░░██║███████╗
╚═╝╚═════╝░╚══════╝╚═╝░░╚══╝░░░╚═╝░░░╚═╝░░░╚═╝░░░░░░╚═╝░░░  ╚═════╝░░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝╚══════╝

# Zone System
Zone systemet giver bander en mulighed for at styre områder rundt omkring på mappet.
Alle zoner er indelt i standard GTA zoner, som kan findes på mappet.
Bander kan modtage zone point ved at sælge stoffer. Banderne skal også have respekt i zonerne for at beholde deres point.

Du kan ændre beskeder under `shared/langs/da.lua`
Du kan indstille scriptet efter dine behov i `config.lua`
Du kan ændre de forskellige funktioner der bliver brugt i scriptet i hhv. `shared/utils.lua`, `server/utils.lua` og `client/utils.lua`

# SQL
Alle `.sql` filer ligger under `SQL` mappen.
Kør `id_zonesystem.sql`

# Dependencies
Alle dependencies kan hentes på vores discord under "kunde"-kategorien.
  - id_core
  - id_notify
  - id_helpnotify
  - oxmysql
  - progressBars

# Exports
==  SERVER  ==
- exports['id_zonesystem']:getZoneOwner(zoneName)
    - [zoneName]: Navnet på zonen
  Retunere banden der ejer zonen

- exports['id_zonesystem']:getZoneSellBonus(gangName, zoneName, amount)
    - [gangName]: Navnet på banden
    - [zoneName]: Navnet på zonen
    - [amount]: Beløbet for salg af stoffer
  Retunere salgs bonus

==  CLIENT  ==
- exports['id_zonesystem']:getZoneName()
  Retunere navnet på den zone spilleren står i

== SHARED ==
- exports['id_zonesystem']:GetZoneLabel(zoneName)
    - [zoneName]: Navnet på zonen
  Returnere label på zonen

- exports['id_zonesystem']:IsZoneAllowed(zoneName)
    - [zoneName]: Navnet på zonen
  Retunere om zonen er i brug

# Events
== SERVER ==
- TriggerEvent('id_zonesystem:zones:soldDrugs', gangName, zoneName, src)
    - [gangName]: Navnet på banden
    - [zoneName]: Navnet på zonen
    - [src]: SourceId på spilleren
  Tilføjer og fjerner point til/fra bander i zonen.
    Skal kaldes når en spiller sælger!

== CLIENT ==
- TriggerEvent('id_zonesystem:respect:playerSellDrugs', time)
    - [time]: Hvor lang tid det tager før spilleren er færdig med at sælge (I sekunder)
  Angiver om man er i gang med at sælge.
    Skal kaldes når en spiller sælger!

# Support
Er der ting i scriptet der ikke virker, så opret en ticket på vores discord: https://discord.gg/E4kMrhQRS3


Copyright(c) Identity Store 2022-2030
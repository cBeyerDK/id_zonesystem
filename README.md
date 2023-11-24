
██╗██████╗░███████╗███╗░░██╗████████╗██╗████████╗██╗░░░██╗
██║██╔══██╗██╔════╝████╗░██║╚══██╔══╝██║╚══██╔══╝╚██╗░██╔╝
██║██║░░██║█████╗░░██╔██╗██║░░░██║░░░██║░░░██║░░░░╚████╔╝░
██║██║░░██║██╔══╝░░██║╚████║░░░██║░░░██║░░░██║░░░░░╚██╔╝░░
██║██████╔╝███████╗██║░╚███║░░░██║░░░██║░░░██║░░░░░░██║░░░
╚═╝╚═════╝░╚══════╝╚═╝░░╚══╝░░░╚═╝░░░╚═╝░░░╚═╝░░░░░░╚═╝░░░
░██████╗████████╗░█████╗░██████╗░███████╗
██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝
╚█████╗░░░░██║░░░██║░░██║██████╔╝█████╗░░
░╚═══██╗░░░██║░░░██║░░██║██╔══██╗██╔══╝░░
██████╔╝░░░██║░░░╚█████╔╝██║░░██║███████╗
╚═════╝░░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝╚══════╝

# Zone System
Zone systemet giver bander en mulighed for at styre områder rundt omkring på mappet.
Alle zoner er indelt i standard GTA zoner, som kan findes på mappet.
Bander kan modtage zone point ved at sælge stoffer. Banderne skal også have respekt i zonerne for at beholde deres point.

Du kan ændre beskeder under `shared/langs/da.lua`
Du kan indstille scriptet efter dine behov i `config.lua`
Du kan ændre de forskellige funktioner der bliver brugt i scriptet i hhv. `shared/utils.lua`, `server/utils.lua` og `client/utils.lua`

# VIGTIGT
Gå ind i `server/main.lua` og `client/main.lua` og ændre variablen "serverEventCode" til det **PRÆCIS** samme i begge filer.
Gøres dette ikke, kan hackere bruge koden til at trigger events og snyde med ting. Kender de ikke koden, så bliver de banned med det samme.

# SQL
Alle `.sql` filer ligger under `SQL` mappen.
Kør `id_zonesystem.sql`

# Dependencies
Alle dependencies kan hentes på vores discord under "kunde"-kategorien.
  - [id_core](https://github.com/cBeyerDK/id_core/releases)
  - [id_notify](https://github.com/cBeyerDK/skeexsNotify/archive/refs/heads/main.zip)
  - [id_helpnotify](https://github.com/cBeyerDK/cd_drawtextui/archive/refs/heads/main.zip)
  - [oxmysql](https://github.com/overextended/oxmysql/releases)
  - [progressBars](https://github.com/cBeyerDK/progressBars/archive/refs/heads/master.zip)

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
Der er ingen support at hente. Scriptet står som det er.

Scriptet er beskyttet under GNU General Public License v3.0 <br />
Scriptet er skrevet og udgivet af **cBeyer** som er med ejer af Identity Store

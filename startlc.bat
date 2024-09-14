::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSTk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFJ6KvDimOXixEroM1MTu4euVjUsbXew6RLzP26aaDMNd713hFQ==
::YB416Ek+Zm8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
Jre\bin\javaw.exe -Xms6072m -Xmx6072m --add-modules jdk.naming.dns -Dlog4j2.formatMsgNoLookups=true --add-opens java.base/java.io=ALL-UNNAMED -XX:+UseStringDeduplication "-Dichor.filteredGenesisSentries=.*lcqt.*|.*Some of your mods are incompatible with the game or each other.*" --add-exports jdk.naming.dns/com.sun.jndi.dns=java.naming -Dichor.fabric.localModPath=FabricModLoader\mods -Djava.library.path=natives -Djna.boot.library.path=natives -cp common-0.1.0-SNAPSHOT-all.jar;genesis-0.1.0-SNAPSHOT-all.jar;legacy-0.1.0-SNAPSHOT-all.jar;lunar.jar;lunar-emote.jar;lunar-lang.jar;modern-0.1.0-SNAPSHOT-all.jar;OptiFine_v1_8.jar;optifine-0.1.0-SNAPSHOT-all.jar; com.moonsworth.lunar.genesis.Genesis --ichorExternalFiles OptiFine_v1_8.jar,hypixel-skyblock-hoppity-eggs.json,hypixel-skyblock-item-abilities.json,hypixel-quickplay-data.json,hypixel-bedwars-data.json,hypixel-skyblock-dungeon-rooms.json --ichorClassPath common-0.1.0-SNAPSHOT-all.jar,genesis-0.1.0-SNAPSHOT-all.jar,legacy-0.1.0-SNAPSHOT-all.jar,lunar-lang.jar,lunar-emote.jar,lunar.jar,optifine-0.1.0-SNAPSHOT-all.jar --workingDirectory . --classpathDir .  --version 1.8.9 --accessToken 0 --assetIndex 1.8 --userProperties f --gameDir %USERPROFILE%\AppData\Roaming\.minecraft --texturesDir textures launcherVersion 3.2.12 --installationId 0 --sentryTraceId 0 --width 854 --height 480
cls
exit
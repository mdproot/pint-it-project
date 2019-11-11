# Kehitysympäristön vaatimukset

- Node
- [Nativescript](https://docs.nativescript.org/start/quick-setup)
- [ngrok](https://ngrok.com/)
- Relaatiotietokanta; MariaDB
- Android Studio
- Asenna sequelize globaalisti `npm install sequelize -g`

# Kehitysympäristön rakennus

## Tietokanta
1. Luo uusi Mysql tietokanta **backendPintit**
2. Avaa terminaalissa `/program/backend/seq` ja suorita komento `sequelize db:migrate`
3. Avaa **SQL-dump.sql** tiedosto hakemistosta `program/backend/mock-data-sql/`
4. Kopio dumppi luomaasi tietokantaan **backendPintit**
5. Aja dumppi

# Kehitysympäristön käynnistäminen
1. Käynnistä tietokantapalvelin
2. Käynnistä ngrok terminaalissa komennolla `ngrok http 3000`
3. Vaihda tiedoston `program/frontend/src/app/connection.ts` muuttuja ngrokin tarjoamaan osoitteeseen. **(UUSIKSI JOKA KERTA!)**
4. Mene terminaalissa `program/backend/` ja suorita `npm start`
5. Avaa emulaattori/mobiililaite (Android)
--* Suorita `~/Android/Sdk/tools/emulator -list-avds` (Näyttää sinulle avoinna olevat emulaattorit)
--* Suorita `cd ~/Android/Sdk/tools` ja suorita komento `./emulator @<emulator-name>`
6. Mene terminaalissa `program/frontend/` ja suorita komento `tns run android --bundle`
--* JOS sinulla useampi emulaattori käytössä (`tns devices`) , ja haluat tietyn emulaattorin käyttöön aja `tns run android --bundle --device <deviceID>`

# Kehitysympäristön korjaaminen
Jos jossain vaiheessa muutaman `pull`in jälkeen asiat eivät toimivan ja erroria ei tule, suorita seuraavan listan komennot:

1. Ole **program/frontend**-kansiossa ja suorita komento `rm -rf node_modules/ platforms/ hooks/`
2. Suorita **program/frontend** kansiossa `npm i`
3. Suorita **program/frontend** kansiossa `tns run android --bundle`

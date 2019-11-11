# Projektisuunnitelma

- [Projektisuunnitelma](#projektisuunnitelma)
  - [Muutoshistoria](#muutoshistoria)
  - [Projektin tiedot](#projektin-tiedot)
    - [Termit ja lyhenteet](#termit-ja-lyhenteet)
    - [Viitteet](#viitteet)
  - [Projektin sisältö](#projektin-sis%C3%A4lt%C3%B6)
    - [Projektin tausta ja tavoitteet](#projektin-tausta-ja-tavoitteet)
    - [Tuotokset](#tuotokset)
    - [Projektin hyväksyminen](#projektin-hyv%C3%A4ksyminen)
  - [Toimintasuunnitelma](#toimintasuunnitelma)
    - [Projektin aloittamisesta](#projektin-aloittamisesta)
    - [Projektin toteuttamisesta](#projektin-toteuttamisesta)
    - [Projektin testaamisesta](#projektin-testaamisesta)
    - [Projektin lopettamisesta](#projektin-lopettamisesta)
  - [Projektin resurssit](#projektin-resurssit)
    - [Projektin organisaatio](#projektin-organisaatio)
    - [Ohjausryhmä](#ohjausryhm%C3%A4)
    - [Työkalut](#ty%C3%B6kalut)
  - [Aikataulu](#aikataulu)
  - [Raportointi ja kommunikointi](#raportointi-ja-kommunikointi)
    - [Sisäinen raportointi](#sis%C3%A4inen-raportointi)
    - [Asiakasraportointi](#asiakasraportointi)
    - [Viikkopalaverikäytäntö/Daily Scrum](#viikkopalaverik%C3%A4yt%C3%A4nt%C3%B6daily-scrum)
    - [Kommunikointitavat](#kommunikointitavat)
  - [Dokumentointi](#dokumentointi)
    - [Dokumenttipohjat](#dokumenttipohjat)
    - [Dokumenttien hallinta](#dokumenttien-hallinta)
  - [Riskien hallinta](#riskien-hallinta)
  - [Avoimet asiat](#avoimet-asiat)

## Muutoshistoria

| Päivämäärä | Versio |  Muutoksen tekjiä | Muutos |
|---|---|---|---|
21.01.2019 | V.1.0 | Antony Smal | Projektisuunnitelma luotu
22.01.2019 | V.1.1 | Antony Smal | Muutoshistoria luotu, sisällysluettelon muokkaus.
05.02.2019 | V.1.2 | Marcus Palenius | Oikoluku ja viime silaukset

## Projektin tiedot

\<Pint.it>

Tekijät:
- Kätkä Christian
- Laitinen Panu
- Rukkila Samuli
- Palenius Marcus
- Smal Antony

### Termit ja lyhenteet

| Termi | Kuvaus |
|---|---|
GIT | Versionhallintajärjestelmä
GitHub | Palvelu joka on rakennettu GIT versionhallinnan ympärille
Markdown | Merkkauskieli
NPM | Node Package Manager - Pakettimanageri
NativeScript | Mobiilisovelluskehys
Sequelize | Node.js ORM, joka muokkaa relaatiotietokannan abstraktiksi, mahdollistaen oliopohjaisen ohjelmoinnin


### Viitteet

| Viittaus | Materiaali |
|---|---|
HLTP | \<linkki hltp dokumenttiin>
Esitutkimus | [Esitutkimus](https://github.com/jamktiko/TC6-sip/blob/master/dokumentit/esitutkimus.md)
Code guideline

## Projektin sisältö
Projektin tarkoituksena on tuottaa demo oluen ympärille keskittyvästä sosiaalisesta mediasta. Lisäksi projektin aikana harjoitellaan scrum/agile-kehitystä.

Tämä dokumentti sisältää työkäytänteet, jotka ryhmä on sopinut keskenään.

### Projektin tausta ja tavoitteet

Luomme demon sovelluksesta.

Projektin aikana on tarkoitus oppia toimimaan ryhmän jäsenenä ketterän kehityksen piirissä.

### Tuotokset

- Projektisuunnitelma
- Esitutkimus
- High level test plan
- Sprint backlog
- Code-guideline
- Sovellusdemo
- Raportit

### Projektin hyväksyminen

Projekti todetaan hyväksytyksi, kun esitutkimuksessa määritelleet asiakaskertomukset ollaan saatu toteutettua hyväksymiskriteerin mukaisesti tai kun projektin alkamispäivästä on kulunut annettu 12 viikkoa.

## Toimintasuunnitelma

![Scrum-prosessimme](kuvat/scrum-process.png)

Projekti viedään läpi käyttäen scrum-metodeja;
**Sprint planning day**, joka järjestetään jokaisen sprintin ensimmäisenä maanantaina.

**Daily Scrum** palaveri, jossa käydään läpi mitä kukakin on tehnyt ja mitä tulee tekemään seuraavan työpäivän aikana. Voidaan tarkastella myös läpi ongelmiakohtia, joita on herännyt mieleen.

**Viikkopalaveri**, jossa käydään läpi edellisen viikon tapahtumat, sekä pohditaan seuraavan viikon tapahtumia. 

**Retrospektiivi**, joita pidetään jokaisen sprintin jälkeen. Tarkoituksena on tarkistaa demon tilaa sekä miettiä voisiko joitain asioita suorittaa tehokkaammin ja paremmin.

**Backlog grooming** tarvittaessa.

### Projektin aloittamisesta
Projekti aloitetaan 21.1.2019 esituotantovaiheella. Ensimmäistä sprinttiä varten kirjoitetaan käyttäjätarinoista backlog, sekä suunnitellaan kahden viikon tehtävät työt.

### Projektin toteuttamisesta
Projektia tuotetaan kahden viikon mittaisissa sprinteissä. Ensimmäinen sprintti käynnistetään 28.1.2019.

Kahden sprintin aikana luodaan demo. Jokaisen sprintin jälkeen pidetään retrospektiivi.

### Projektin testaamisesta
Jokainen kehittäjä on vastuussa henkilökohtaisesta ensimmäisen tason testaamisestaan omalla työpisteellään. (Code guidelines) Korkeampi testaaminen on määritelty high level test planissa (HLTP).

### Projektin lopettamisesta
Projekti voidaan todeta päättyneeksi viimeisen sprintin jälkeen, jolloin kehittäminen päättyy ja projekti siirtyy ylläpitotilaan.

Projektin jatkamisesta määritetään myöhemmin tässä dokumentissa, viimeisen sprintin aikana.

## Projektin resurssit

### Projektin organisaatio

| Nimi | Rooli(t) | Yhteystiedot
|---|---|---|
Christian Kätkä | Product Owner | L9956@student.jamk.fi
Marcus Palenius | Scrum Master/Tester | L4903@student.jamk.fi
Panu Laitinen | Hustler/Tester | L4477@student.jamk.fi
Samuli Rukkila | Lead Developer | L4924@student.jamk.fi
Antony Smal | Tester | M1630@student.jamk.fi

### Ohjausryhmä

| Nimi | Rooli(t) | Yhteystiedot
|---|---|---|
Teemu Pölkki | Laboratoriomaisteri | teemu.polkki@jamk.fi
Janne Hanhela | Mentori | janne.hanhela@jamk.fi
Niko Kiviaho | Senior Lecturer | niko.kiviaho@jamk.fi

### Työkalut

- Microsoft o365
  - Word, Excel, Powerpoint
- Microsoft Teams
- Slack
- GitHub
- Heroku
- Relaatiotietokanta; MariaDB

## Aikataulu

| | Tapahtuma | Päivämäärä | Muut tiedot/osanottajat
|---|---|---|---|
[x] | Esituotanto alkaa | 21.1.2019 | TC projektitiloisas, paikalla koko ryhmä
[x] | Esituotanto loppuu | 25.1.2019 | Paikalla koko ryhmä
[x] | Sprintti 1 alkaa | 28.1.2019 | Paikalla koko ryhmä
[ ] | Sprintti 1 loppuu | 8.2.2019 | Paikalla koko ryhmä
[ ] | Sprintti 2 alkaa | 11.2.2019 | Paikalla koko ryhmä
[ ] | Sprintti 2 loppuu | 22.2.2019 | Paikalla koko ryhmä
[ ] | Sprintti 3 alkaa | 4.3.2019 | Paikalla koko ryhmä
[ ] | Sprintti 3 loppuu | 15.3.2019 | Paikalla koko ryhmä
[ ] | Sprintti 4 alkaa | 18.3.2019 | Paikalla koko ryhmä
[ ] | Sprintti 4 loppuu | 29.3.2019 | Paikalla koko ryhmä
[ ] | Sprintti 5 alkaa | 1.4.2019 | Paikalla koko ryhmä
[ ] | Sprintti 5 loppuu | 12.4.2019 | Paikalla koko ryhmä
[ ] | Sprintti 6 alkaa | 15.4.2019 | Paikalla koko ryhmä
[ ] | Sprintti 6 loppuu | 26.4.2019 | Paikalla koko ryhmä
[ ] | Jälkituotanto alkaa | 29.4.2019 | Paikalla koko ryhmä
[ ] | Jälkituotanto loppuu | 10.5.2019 | Paikalla koko ryhmä
[ ] | Projektin konkurssi | 10.5.2019 | Saunatiloilla, tuothan oman pyyhkeen, paikalla kaikki


## Raportointi ja kommunikointi

### Sisäinen raportointi

Maanantaisin pidettävä viikkopalaveri käsittelee edeltävän viikon asioita. Käsitellyt asiat kootaan viikkoraporttiin, jotka lisätään MS Teamsiin / Office 365-pilveen.

Edellämainittujen asioiden lisäksi ryhmä tuottaa projektistaan demonstraation demotilaisuuksia varten, joita järjestetään kuluvan kevään aikana neljän viikon välein, yhteensä kolme.

### Asiakasraportointi

Asiakkaalle raportoidaan projektin aikana jokaisen viikon maanantaina kello 16 mennessä. Viikkopalaveri pidetään maanantaisin, josta Scrum Master koostaa raportin asiakasta varten.

### Viikkopalaverikäytäntö/Daily Scrum

Daily Scrum pidetään jokaisena arkipäivänä kello 11.

Projektin viikkopalaveri pidetään maanantaisin, jolloin käydään läpi edellisen viikon tapahtumat sekä selvitetään tulevan viikon työt. Viikkopalaverista tuotetaan pöytäkirja, joita pidetään tallessa projektin repositoriossa.

### Kommunikointitavat

Epämuodollisten asioiden jakamiseen ryhmä käyttää Slackia. Näin mahdollistetaan dynaamisempi kommunikaatio. 

## Dokumentointi

Projektisuunnitelmassa on viimeisin tieto, jota päivitellään tarpeen vaatiessa.

### Dokumenttipohjat

Käytämme JAMKin tarjoamia dokumentointiin tarkoitettuja pohjia, jotka on saatavilla [TC repositorysta](https://github.com/jamktiko/tc-demolab-manuaali).

### Dokumenttien hallinta

GitHubissa sprint-haaran dokumentteja voi muokata työryhmä. Haara yhdistetään master-haaraan viikon lopuksi, jota kukaan ei voi yksinään hallita, vaan tähän vaaditaan toisen työryhmän tarkistus ja hyväksyntä.

Dokumenttiin merkitään täydet versiot (1.0 , 2.0 jne.), vasta kun ne on hyväksytty viikkopalaverissa.

## Riskien hallinta


| Riskit | Todennäköisyys | Impakti | Minimointi
|---|---|---|---|
Emme pysy aikataulussa | Pieni | Suuri | Ryhmänä tulemme noudattamaan scrumin käytänteitä.
Työn määrän ja tehtävän väärin arviointi | Pieni | Suuri | Pyrimme määrittämään tehtävät  ja työt sekä arvioimaan työtehtävät kattavasti esitutkimuksessa.

## Avoimet asiat

- Tietokannan suunnittelu
- Palvelinalusta
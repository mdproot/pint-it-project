# High level test plan

Pint.it

Tekijät:
- Marcus Palenius
- Antony Smal
- Panu Laitinen
- Samuli Rukkila
- Christian Kätkä

## Sisällysluettelo <!-- omit in toc -->

- [High level test plan](#high-level-test-plan)
  - [Viitteet](#viitteet)
  - [1.0 Intro](#10-intro)
    - [1.1 Projekti lyhyesti](#11-projekti-lyhyesti)
    - [1.2 Tarkoitus](#12-tarkoitus)
  - [2.0 Testistrategia](#20-testistrategia)
    - [2.0.1 Aikataulutus testauksesta](#201-aikataulutus-testauksesta)
    - [2.1 Testikohteet](#21-testikohteet)
    - [2.2 Testitehtävät](#22-testiteht%C3%A4v%C3%A4t)
      - [2.2.1 Dokumenttien testaus](#221-dokumenttien-testaus)
      - [2.2.2 Raporttien testaus](#222-raporttien-testaus)
      - [2.2.3 Ohjelmakoodin testaus](#223-ohjelmakoodin-testaus)
      - [2.2.4 Sovelluksen testaus](#224-sovelluksen-testaus)
    - [2.3 Testattavat ominaisuudet](#23-testattavat-ominaisuudet)
      - [2.3.1 Versiotestaus](#231-versiotestaus)
      - [2.3.2 Käyttöliittymätestaus](#232-k%C3%A4ytt%C3%B6liittym%C3%A4testaus)
    - [2.4 Ominaisuudet, joita ei testata](#24-ominaisuudet-joita-ei-testata)
    - [2.5 Lähestymistapa](#25-l%C3%A4hestymistapa)
      - [2.5.1 Aktiviteetit ja tekniikat](#251-aktiviteetit-ja-tekniikat)
      - [2.5.2 Työkalut](#252-ty%C3%B6kalut)
    - [2.6 Rajoitteet](#26-rajoitteet)
    - [2.7 Hyväksymiskriteerit](#27-hyv%C3%A4ksymiskriteerit)
      - [2.7.1 Yksikkötestaus](#271-yksikk%C3%B6testaus)
      - [2.7.2 Integraatiotestaus](#272-integraatiotestaus)
      - [2.7.3 Bugien Riskiasteikko](#273-bugien-riskiasteikko)
        - [2.7.3.1 R2 - Matalan tason riski](#2731-r2---matalan-tason-riski)
        - [2.7.3.2 R3 - Keskitason riski](#2732-r3---keskitason-riski)
        - [2.7.3.3 R4 - Korkea tason riski](#2733-r4---korkea-tason-riski)
        - [2.7.3.4 R5 - Vakava riski](#2734-r5---vakava-riski)
    - [2.8 Testauksen keskeytys ja jatkaminen](#28-testauksen-keskeytys-ja-jatkaminen)
      - [2.8.1 Kirjoitettu materiaali](#281-kirjoitettu-materiaali)
      - [2.8.2 Ajettavat tiedostot](#282-ajettavat-tiedostot)
  - [3.0 Tuotokset](#30-tuotokset)
  - [4.0 Ympäristö](#40-ymp%C3%A4rist%C3%B6)
  - [5.0 Velvollisuudet/vastuut](#50-velvollisuudetvastuut)
  - [6.0 Osaaminen ja sen hankinta](#60-osaaminen-ja-sen-hankinta)
  - [7.0 Aikataulut](#70-aikataulut)
    - [7.1 Yksikkötestit](#71-yksikk%C3%B6testit)
    - [7.2 Integraatiotestit](#72-integraatiotestit)
    - [7.3 Validaatiotestit](#73-validaatiotestit)
    - [7.4 Järjestelmätestit](#74-j%C3%A4rjestelm%C3%A4testit)
  - [8.0 Riskit](#80-riskit)
    - [8.1 Ammattitaidon puute](#81-ammattitaidon-puute)
  - [9.0 Riippuvuudet](#90-riippuvuudet)


## Viitteet

| Viittaus | Materiaali |
|---|---|
| Projektisuunnitelma | [Projektisuunnitelma](https://github.com/jamktiko/TC6-sip/blob/master/dokumentit/projektisuunnitelma.md) |

## 1.0 Intro

### 1.1 Projekti lyhyesti

Haluamme tarjota ihisille motivaattorin yhteisökokemukseen oluen parissa. Tulevaisuudessa näemme sovelluksen olevan tapa tuoda laatuoluita loppukäyttäjien tietoon sekä kannustamaan ihmisiä vastuulliseen juomiseen, ja juomaan vähemmän, mutta laatua.

### 1.2 Tarkoitus

Dokumentissa on kirjattuna Pint.it-sovelluksen testikäytänteet. Testikäytänteiden avulla varmistetaan sekä lopputuotteen että projektin aikana syntyneiden dokumentaatioiden laadunhallinta.

## 2.0 Testistrategia

### 2.0.1 Aikataulutus testauksesta 

![a](../kuvat/TC6-sip-hltp-timetable.png)

### 2.1 Testikohteet

- Dokumentit
- Raportit
- Mobiilisovellus
- Back-end
- Mock-upit

Testattavat kohteet jaetaan QA-tiimille testattavaksi versionhallintasovelluksen (GitHub) kautta. Testaaja lataa stabiilin version itse ja suorittaa kohteelle määritetyt testit. Testaaja myöskin tarkistaa versionhallintasovelluksessa tehdyt muutokset, joita ollaan siirtämässä stabiiliin versioon.

### 2.2 Testitehtävät

- Testien suunnittelu
- Testiskriptien teko
- Testidata
  - Luodaan testidataa järjestelmään, jotta nähdään, miten järjestelmä käyttäytyy
- Selenium-testiympäristön käyttöönotto

#### 2.2.1 Dokumenttien testaus

Lähtökohtaisesti erityistä painoarvoa testauksessa annetaan niille dokumenteille, jotka päätyvät asiakkaalle. Näistä esimerkkeinä mm. projektisuunnitelma, esitutkimus sekä projektista mahdollisesti syntyvät asennusohjeet tai muut tuotteen käyttöä kuvaavat dokumentit. Dokumenttien testausprosessi noudattaa alla olevassa listassa määriteltyä käytännettä.

- Testitiimi auditoi ja oikolukee valmiiksi kirjoitetun dokumentin
- Asiavirheet korjataan ja dokumentti tarkastetaan mahdollisen virheellisen informaation osalta
- Dokumentti annetaan tarkastettavaksi kolmannelle osapuolelle, esimerkiksi vertaisopiskelijalle
- Dokumentti hyväksytetään (Pölkki / Kiviaho)

#### 2.2.2 Raporttien testaus

Pääsääntöisesti raporttien osalta testausprosessin ei tarvitse olla yhtä tarkoin määritelty kuin dokumenttien, mutta mikäli raportti luovutetaan asiakkaalle, tulee yllä kuvattuja käytänteitä noudattaa.

- Testausryhmä oikolukee raportin ja korjaa asiavirheet
- Sovelluksen testaaminen projektiryhmässä
- Sovelluksen testauttaminen loppukäyttäjillä

#### 2.2.3 Ohjelmakoodin testaus
- Yksikkötestaukset
- Automaatiotestaus
  
QA-tiimi totutettaa tehtyyn koodiin Chai/Mocha-testikirjastojen avulla yksikkötestit. Näiden tekniikoiden avulla voidaan valvoa ja varmistua, että esimerkiksi testattavat funktiot palauttavat tarvittavat arvot. Tarkoituksena on tunnistaa ja ehkäistä yleisimpien virhetilanteiden aiheuttamia vahinkoja sekä etsiä ja löytää harvinaisempia virhetilanteita.

#### 2.2.4 Sovelluksen testaus

Sovellusta on tarkoituksena automaatiotestata Robot Frameworkin avulla. Näin voimme toteuttaa automatisoidun testausrutiinin, joka testaa mm. käyttöliittymää ja sen toiminnallisuuksia, sekä dokumentoi sen videokuvalla ja ruudunkaappauksilla. (Appium)

### 2.3 Testattavat ominaisuudet

- Versioyhteensopivuus
- Käyttöliittymätestaus
- Skaalautuvuus
- Tietoturva
- Kuormitus

#### 2.3.1 Versiotestaus

Vanhin Androidin versio, jolla sovellus tulee toimia, on Android 4.4 KitKat. Tästä syystä kehitysalustat määritetään samaan versioon. Kyseessä on Androidin stabiiliversio, joten oletamme sen aiheuttavan huomattavasti vähemmän ongelmia versioyhteensopivuuden kanssa.

#### 2.3.2 Käyttöliittymätestaus

Käyttöliittymätestaamisen tarkoituksena on tarkistaa, että sovelluksen elementit tuottavat oletetun tuloksen. Esimerkiksi sovelluksen navigaatiossa olevien painikkeiden tulee johdottaa käyttäjä painikkeen ilmoittamaan näkymään.

Lista sovelluksen ominaisuuksista, jotka voidaan testata manuaalisesti tai automaattisesti: 

- Rekisteröityminen
- Kirjautuminen
- Postauksen tekeminen
- Postauksesta tykkääminen
- Postauksen kommentointi

Käyttöliittymätestien ajamisen ideana on todentaa, että sovelluksen käyttöliittmyään voidaan luottaa ja se suorittaa niitä asioita, joita voimme visuaalisen näkymän perusteella olettaa. Tästä varmennumme testauttamalla sovellusta potentiaalisilla loppukäyttäjillä.

### 2.4 Ominaisuudet, joita ei testata
 
Koska projektin pituus on ennalta rajoitettu 12 viikkoon, tietokannan optimaalisuutta ei testata.

### 2.5 Lähestymistapa

#### 2.5.1 Aktiviteetit ja tekniikat 
  - Yksikkötestaus
  - Integraatiotestaus
    - Savutestaus
  - Validaatiotestaus
  - Järjestelmätestaus, jonka osa-alueista sovelletaan
    - Käytettävyys
    - Suorituskyky
    - Luotettavuus

#### 2.5.2 Työkalut
- Mocha/Chai/Jasmine
- Robot Framework
- Appium

### 2.6 Rajoitteet

Rajoitteina mainittakoot, että koska projektille käytettävissä oleva aika on ennalta määrätty, täytyy ominaisuuksista ja mahdollisesti testiprosesseista tinkiä. Osa-alueet, joista tullaan karsimaan ovat toistaiseksi TBD. Lisäksi projektiryhmällä ei ole aiempaa kokemusta testaustyökaluista.

### 2.7 Hyväksymiskriteerit

#### 2.7.1 Yksikkötestaus
Testien mittarina käytetään *hyväksytty* tai *hylätty* arviointiasteikkoa.

#### 2.7.2 Integraatiotestaus
Integraatiotestien aikana tarkistetaan komponenttien yhteensopivuutta, jonka avulla voidaan varmistua siitä, että kaksi eri komponenttia ovat keskenään yhteensopivia.

#### 2.7.3 Bugien Riskiasteikko

##### 2.7.3.1 R2 - Matalan tason riski

Matalan tason riskeillä tarkoitetaan suoritetun testin aikana havaittuja ulkonäöllisiä ongelmia. Näistä esimerkkeinä toimivat mm. kirjoitusvirheet tai sovelluksen muotoiluun ja ulkoasuun liittyvät ongelmat.

Tällaiset riskit eivät vaikuta sovelluksen toimintalogiikkaan, mutta ovat häiritseviä. Korjaus vaatii vähän työtä.

##### 2.7.3.2 R3 - Keskitason riski

Keskitason riskeihin kuuluu mm. toimimattomat sovelluselementit, väärin ryhmittyvät elementit tai painikkeet.

Keskitasoisten riskien korjaaminen aiheuttaa työtä. 

##### 2.7.3.3 R4 - Korkea tason riski

Riskitilanteet, joiden korjaaminen vaatii enemmän työtä. Näistä esimerkkinä vaikkapa tietokannassa olevan datan vääristyminen tallenus- tai palautusvaiheessa.

##### 2.7.3.4 R5 - Vakava riski

Vakaviin riskeihin kuuluu esimerkiksi sellaiset sovelluksen tai ohjelmakoodin virhetilanteet, jossa esimerkiski käyttäjälle tulostuu väärää käyttäjäkohtaista tietoa. Lisäksi palvelimen tai tietokannan kaatuminen testausvaiheessa kertoo koodissa olevan vakavampaa puutosta.

FI: Millä tavalla jokin testaustaso voidaan todeta §äättyneeksi? Mittaristo sille, että testaus on suoritettu.

### 2.8 Testauksen keskeytys ja jatkaminen

#### 2.8.1 Kirjoitettu materiaali

Testaaminen keskeytetään silloin, kun voidaan huomata virhe tiedon oikeellisuudessa. Keskeytymisen jälkeen tiedon oikeellisuus korjataan, sekä testaamista jatketaan eteenpäin,kunnes löytyy uusi virhe tai testi loppuu.

#### 2.8.2 Ajettavat tiedostot

Sovelluksen sekä ohjelmanosien kohdalla käytäntönä on laskea testi keskeytyneeksi, kun ohjelma ei toimi kuten on määritetty tai sovellus kaatuu. Esimerkiksi jos tarkoituksena on testata että että napista X tapahtuu jotakin, mutta näin ei tapahdu, voidaan todeta testaaminen keskeytyneeksi löytyneen bugin takia. Testaamista jatketaan kun testaamisen aikana löytynyt bugi on korjattu. 

## 3.0 Tuotokset

  - Testiraportit
  - Käyttäjätutkimukset
  - Testiscriptit

## 4.0 Ympäristö

N/A

## 5.0 Velvollisuudet/vastuut

**QA-tiimin velvollisuudet**

- Laadunhallinta
- Testien toteutus
- Testien kirjoittaminen
- Vaitiolovelvollisuus

**Kehittäjien velvollisuudet**

- Mikäli valmiita yksikkötestejä on, on jokaisen vastuulla ajaa scripti ja varmistaa, että ohjelmakoodi toimii testin määrittämällä tavalla
- Vaitiolovelvollisuus

## 6.0 Osaaminen ja sen hankinta

QA-tiimi perehtyy testaamiseen määrätyn kirjan avulla sekä selvittämällä työkalujen toimintaa. Käytännössä siis ammattitaidon hankinta tehdään itseopiskelun kautta.

## 7.0 Aikataulut

Järjestelmätestit ajetaan viikkoa ennen demoa. Aikataulutus muuten TBD.

### 7.1 Yksikkötestit
Yksikkötestejä ajetaan ohjelmoinnin ohessa silloin kun funktio, aliohjelma tai muu pieni kokonaisuus on uusi ja testaamaton. Lisäksi jo olemassa olevaa komponenttia muokattaessa tulee yksikkötesti ajaa uudestaan. Näin varmistetaan, että komponentteja testataan tarpeeksi usein.

### 7.2 Integraatiotestit
Testejä suoritetaan päivittäin, jotta mahdolliset virheet voidaan todeta aikaisessa vaiheessa, ennen kuin niiden korjaaminen muodustuu työmäärällisesti suureksi kokonaisuudeksi.

Integraatiotestaamiseen kuuluu myös savutestaus. Savutestauksessa ohjelmakoodista luodaan kokonaisuus hyödyntäen valmiita osia. Näin toimimalla voimme helpommin seurata ko. päivän aikana tehtyjen lisäyksien aiheuttmia virheitä. Jos koontiversio ei läpäise testejä, niin päivän aikana tehdyt muutokset ovat virheiden syynä.

### 7.3 Validaatiotestit

Validaatiotestaukseen liittyvät käyttötapaukset ja hyväksymiskriteerit on määritelty projektin esitutkimuksessa. Testit luodaan käyttötapauksien mukaisesti, ja niissä pyritään löytämään ongelmakohtia sekä korjaamaan

### 7.4 Järjestelmätestit
Järjestelmätestit suoritetaan viikkoa ennen demoa (demon pitää olla valmiina joka toisen sprintin lopussa), jotta mahdolliset virhetilanteet voidaan korjata ajoissa ennen demon esittämistä. 

Järjestelmäntestaaminen vaatii myös käyttäjien kokemuksia ja havaintoja järjestelmän toimivuudesta, joten koekäyttäjien etsiminen täytyy aloittaa ennen varsinaista testaamista.

## 8.0 Riskit

### 8.1 Ammattitaidon puute
Ryhmän QA-tiimillä on puutetta testaamisen osaamisessa, mutta tätä pyrimme paikkaamaan itseopiskelulla ja verkosta löytyvillä testauksen kursseilla. Isoimpia aukkoja tiedon puutteessa on automaatiotestauksessa, mutta tähän on löytynyt muutama hyvä verkko-opas, joista on jaettu tietoa QA-tiimin kesken.


## 9.0 Riippuvuudet
N/A

# Product Backlog

## Sisällysluettelo
- [Product Backlog](#product-backlog)
  - [Sisällysluettelo](#sisällysluettelo)
  - [Product Backlog](#product-backlog-1)
    - [Navigointipalkki](#navigointipalkki)
      - [Hyväksymiskriteeri](#hyväksymiskriteeri)
      - [Taskit](#taskit)
    - [Rekisteröityminen & Kirjautuminen](#rekisteröityminen--kirjautuminen)
      - [Hyväksymiskriteeri](#hyväksymiskriteeri-1)
      - [Taskit](#taskit-1)
    - [Ilmoitussivu](#ilmoitussivu)
      - [Hyväksymiskriteeri](#hyväksymiskriteeri-2)
      - [Taskit](#taskit-2)
    - [Autentikaatio](#autentikaatio)
      - [Hyväksymiskriteeri](#hyväksymiskriteeri-3)
      - [Taskit](#taskit-3)
    - [Profiilinäkymä](#profiilinäkymä)
      - [Hyväksymiskriteerit](#hyväksymiskriteerit)
      - [Taskit](#taskit-4)
    - [Asetusvalikko](#asetusvalikko)
      - [Hyväksymiskriteeri](#hyväksymiskriteeri-4)
      - [Taskit](#taskit-5)
    - [Postauksien selaus / päänäkymä](#postauksien-selaus--päänäkymä)
      - [Hyväksymiskriteerit](#hyväksymiskriteerit-1)
      - [Taskit](#taskit-6)
    - [Postauksien lisäys](#postauksien-lisäys)
      - [Hyväksymiskriteerit](#hyväksymiskriteerit-2)
      - [Taskit](#taskit-7)


1, 2, 3, 5, 8, 13, 21

## Product Backlog
Käyttäjäkertomus | Pisteet | Tilanne
---|---|---
Navigointipalkki | 8 | Kesken
Rekisteröinti | 13 | Ei aloitettu
Kirjautuminen; Social login | 13 | Ei aloitettu
Ilmoitussivu & Tapahtumailmoitus | 8 | Kesken
Ponnahdusilmoitukset | 8 | Ei aloitettu
Autentikaatio | 13 | Ei aloitettu
Profiilinäkymä | 8 | Kesken
Profiilinäkymä; Postauksen järjestely | 5 | Ei aloitettu
Asetusvalikko | 13 | Ei aloitettu
Katso postauksia (etusivu) -sivu | 21 | Kesken
Postauksen tekeminen | 13 | Ei aloitettu
Postauksen tykkääminen | 8 | Kesken
Postauksen kommentointi | 13 | Ei aloitettu
**Yhteensä:** | **144 pistettä** | |



### Navigointipalkki

Haluan, että voin navigointipalkista siirtyä helposti sivujen välillä, enkä halua joutua opettelemaan uutta navigointipalkkia vaan yhden applikaation takia. Navigointikuvakkeiden pitää myös olla selviä.

#### Hyväksymiskriteeri

Navigointipalkki on nähtävissä kokoajan ja se on yhtenevä muun sivuston kanssa. Navigointipalkki on selkeä ja se sisältää vain tarvittavat iconit.

#### Taskit
- Navigointipalkissa 5 iconia, joista jokainen vie käyttäjän eri sivuille
  - Etusivu
  - Ilmoitukset
  - Lisää postaus
  - Profiili
  - Asetukset


### Rekisteröityminen & Kirjautuminen

Voin rekisteröityä palveluun Google- tai Facebook-tilini kautta tai rekisteröitymislomakkeella.

Sovellukseen kirjautuminen onnistuu luomillani tunnuksilla. Avattuani sovelluksen ja painettuani sisäänkirjautumisnappia avautuu modaali-ikkuna, johon sähköpostiosoite tai salasana kirjoitetaan. Sosiaalista loginia käytettäessä kirjautuminen (joka luodaan vasta myöhemmin) onnistuu nopeammin. Minulle tulee ilmoittaa, mikäli kirjautumistietoni eivät täsmää.

#### Hyväksymiskriteeri

Sovelluksen avattuani pyydetään minua kirjautumaan sisään tai rekisteröitymään. Rekisteröitymisnappia painamalla avautuu modaali-ikkuna, jossa lomake pyytää minulta käyttäjänimen, sähköpostin ja salasanan. Oikeelliset tiedot annettuani saan tiedon rekisteröitymisen onnistumisesta ja minulle lähetetään viesti sähköpostitse. Jos antamani tiedot ovat määritysten vastaiset, minulle näytetään virheviesti.

Salasanani unohtuessa minulle voidaan lähettää sähköpostiviesti salasanan vaihtamista varten. Sosiaalista kirjautumista käyttäessäni minun ei tarvitse kirjoittaa tunnuksiani yhä uudestaan, vaan kirjautumiseni varmennetaan esimerkiksi Facebookin kautta. Ensimmäisellä kirjautumiskerralla valitsen käyttäjänimen Kirjautumisikkuna kertoo minulle, mikäli kirjautumisessa jokin meni vikaan. Kirjauduttuani sisään voin tarkastella ja muokata tietojani valikon kautta. Onnistuneen kirjautumisen jälkeen minut siirretään sovelluksen päänäkymään automaattisesti.

#### Taskit
- Social Login
  - Kehittäjätyökalun API-key:
    - Facebook
    - Google
  - Social login frontend
    - Kaksi nappia social-kirjautumiseen: (Facebook & Google+)
    - Ohjataan käyttäjä Googlen/Facebookin omaan lomakkeeseen
    - Otetaan käyttäjän tiedot (FB & Google Token, sähköposti, etu- ja sukunimi talteen ja lähetetään backendiin
    - Jos kyseessä on käyttäjän ensimmäinen social login, ohjataan hänet muokattuun rekisteröintilomakkeeseen, jossa valitaan käyttäjätunnus
    - Kun social login on tehty kerran, käyttäjä ohjataan suoraan etusivulle, mikäli kirjautuminen on validi.
  - Social login backend
    - Tehdään frontista tulevan tiedon validointi
    - Jos tiedot on oikeat, käyttäjä lisätään tietokantaan (väh. ilman salasanaa)
    - Palautetaan käyttäjälle token
- Kirjautumislomake
  - Käyttäjätunnus/sähköposti ja salasana
  - Datan oikeellisuus tarkistetaan ennen kuin "Kirjaudu sisään" -nappi tulee käytettäväksi
  - Mikäli käyttäjätunnus, sähköposti ja/tai salasana on väärä tai jos edellämainittuja tietoja ei löydy, tulostetaan käyttäjälle virheilmoitus.
  - Jos kirjautuminen onnistuu, käyttäjä ohjataan etusivulle
  - "Unohditko salasanasi"-nappi (NiceToHave)
    - Lomake, jonka avulla voidaan pyytää salasanan vaihtoa sähköpostin tai käyttäjätunnuksen avulla
    - Pyyntö käsitellään ja käyttäjälle annetaan palaute. Käyttäjän sähköpostiin lähetetään salasanan vaihtolinkki.
- Manuaali rekisteröintilomake
  - Etunimi, sukunimi, käyttäjätunnus, sähköposti, salasana, käyttöehdot & "Vakuutan, että olen yli 18 vuotias" [x]-valintaruutu.
  - Edellämainituista pakollisia kohtia ovat käyttäjätunnus, sähköposti, salasana & valintaruutu.
  - Käyttäjätunnusta ehdotetaan etunimen ja sukunimen perusteella
  - Validointi
  - Frontend lähettää rekisteröinnin backendiin
  - Toiminnon jälkeen palautetaan token ja käyttäjä siirretään etusivulle rekisteröitymisen jälkeen
  - Erilainen rekisteröintilomake social-loginilla (salasana piiloon jne.)
  - Virheviestit jos käyttäjä antaa vääränlaista tietoa
- Rekisteröintilomakkeen datan käsittely backendissä
  - Validointi
  - Datan jälleenlähettäminen tietokantaan
  - Tokenin palautetaan käyttäjälle jos kirjautuminen/rekisteröityminen onnistui
  - Mikäli validointi onnistuu frontendissä, mutta backend huomaa virheen, lähetetään käyttäjälle virheilmoitus. (ns. tuplavalidointi)


### Ilmoitussivu

Haluan, että ilmoitussivu kertoo minulle viimeaikaisimmat tapahtumat. Näen, koska käyttäjä on tykännyt postauksestani tai kommentistani. Näen myös ajan, jolloin ilmoitus on tapahtunut.

#### Hyväksymiskriteeri

Ilmoitussivu näyttää 25 viimeisintä ilmoitusta. Ilmoitukset ovat informatiivisia ja pystyn siirtymään käyttäjien profiileihin ilmoituksesta. Pystyn näkemään kun ihmiset ovat tykänneet tai kommentoineet postauksiani. Näen myös ajan jokaiselle postaukselle.

#### Taskit
- Frontend
  - Lähettää pyynnön backendille
  - Näyttää 25 viimeisintä ilmoitusta tililläsi esim. "<käyttäjätunnus> alkoi seuraamaan sinua!", "Aloit seuraamaan käyttäjää <käyttäjätunnus>", "<käyttäjätunnus> tykkäsi postauksestasi." ja "<käyttäjätunnus> kommentoi postaukseesi."
- Backend
  - Hakee tietokannasta halutun käyttäjän tapahtuma-taulun notifikaatiot, jotka palautetaan frontendiin

### Autentikaatio

Haluan, että minut tunnistetaan oikeana henkilönä, eikä kukaan muu voi esiintyä minuna. En halua, että muut henkilöt voivat tehdä postauksia tai profiilinmuokkauksia minun nimelläni.

#### Hyväksymiskriteeri

Henkilökohtaiset tietoni ovat turvassa. Vain autentikoinut henkilö voi tehdä kyselyitä palvelinpuolelle. Kun olen kerran autentikoinut itseni applikaatioon, ei minun tarvitse tehdä sitä pitkään aikaan enään uudestaan, ellen itse kirjaudu ulos manuaalisesti.

#### Taskit
- Autentikaatio frontend
  - Alkukohtaisesti käyttäjän tietojen säilytykseen käytetään NativeScript lisäosaa nativescript-localstorage (https://www.npmjs.com/package/nativescript-localstorage) (toinen valinnainen vaihtoehto NativeScriptin oma tyyli säilyttää yksinkertaista dataa Application-Settings)
  - Kun käyttäjä kirjautuu sisään, tallennetaan hänestä token, ktunnus, etunimi, sukunimi, bios sekä käyttäjän kuvan osoite backendissä
  - Kun käyttäjä tekee HTTP-kyselyitä backendiin (GET, POST, PUT) viedään jokaisen kyselyn mukana token, joka validoidaan backendissä
  - Auth-guard otetaan vähintään käyttöön kirjautumissivulla joten käyttäjät, jotka ovat jo kerran kirjautuneet sisään eivät kirjaudu uudestaan vaan heidät viedään suoraan etusivulle. Token on vähintään 12kk ajan voimassa. Auth-guard varmistaa frontendissä, että token on vielä voimassa
- Autentikaatio backend
  - Jokainen HTTP-kyselyn mukana tullut token validoidaan, ennen kuin pyyntöä käsitellään
  - Palautteenanto takaisin käyttäjälle jos autentikaatio epäonnistuu



### Profiilinäkymä

Käyttäjälle luodaan profiili, johon tallentuvat käyttäjänimi, vapaatekstimuotoinen kuvaus ja kooste käyttäjän lisäämistä postauksista. Lisäksi profiilisivulla näytetään lukumäärät käyttäjän seuraamista käyttäjistä sekä seuraajien määrästä.

#### Hyväksymiskriteerit

Omat tietoni ja tekemäni postaukset löytyvät profiilini alta ja profiilivalikkoon navigointi onnistuu alavalikosta. Voin selata ja muokata tekemiäni postauksia sekä tarkastella seuraajien ja seurattujen lukumäärää.

#### Taskit

- Backend
  - Profiilin latautuessa haetaan käyttäjän tiedoista seuratut ja seurattavat, sekä taulukko seuraajista ja seurattavista (ktun + kuvaosoite)   
  - Profiiliin haetaan myös käyttäjän postaukset (n. 10 kerrallaan)
- Frontend
  - Näkymän yläpuolella nähdään tarvittavat tiedot henkilöstä: ktun, etunimi, sukunimi, bios, imageurl, jotka haetaan NativeScriptin LocalStoragesta (pluginin avulla). Profiiliin tulee näkyviin myös numeromäärät käyttäjän seuraamista henkilöistä, henkilöistä jotka seuraavat käyttäjää sekä postauksien lukumäärä. Nämä tiedot tulevat LocalStoragen sijaan backendistä.
  - Alempaan näkyvään tulevat käyttäjän viimeisimmät postaukset asynkronisesti (n. 10 ensilatauksella), käyttäjä voi ladata lisää postauksia scrollaamalla alaspäin



### Asetusvalikko

Käyttäjänä haluan, että asetusvalikkonäkymä aukeaa, kun painan asetusnappia. Asetusvalikkonäkymästä pystyn vaihtamaan salasanani aina kun haluan. Pystyn myös säätämään ilmoitusasetuksiani, sekä muokkaamaan profiiliani.   

#### Hyväksymiskriteeri

Asetusvalikkonäkymä aukeaa oikealla tavalla päällekkäin (ListView). Jokaisesta kohdasta pystyy avaamaan uuden näkymän tarkempiin asetuksiin.  

#### Taskit

- Ponnahdusilmoitukset
- Profiilin muokkaus
- Uloskirjautuminen



### Postauksien selaus / päänäkymä

Selatessani postauksiani pääsivulla haluan ilmaista mielipiteeni postauksesta esimerkiksi tykkäyksellä tai kommentilla. Voin myös suodattaa postauksia esimerkiksi ajan, ihmisten, olutnimen tai vaikkapa oluttyypin välillä. Jos postaus on liian pitkä tai kommentteja on liian paljon, piilottaa sovellus ne minulta pois ja voin erikseen avata ne suurempaan näkymään. Pääsen myös postauksen kirjoittaman profiiliin helposti kyseisen henkilön käyttäjätunnusta painamalla.

#### Hyväksymiskriteerit

Pystyn tykkäämään sekä kommentoimaan mitä tahansa postausta. Postausten suodatus onnistuu erilaisten kategorioiden mukaan. Liian pitkien postauksien ylimenevät merkit piilotetaan automaattisesti ja voin avata ne suurempaan näkymään halutessani. Painamalla minkä tahansa postauksen kirjoittajan/kommentoijan nimeä, pääsen hänen profiilisivullensa.

#### Taskit

- Hakupalkki ylhäällä
  - Asynkroninen käyttäjien, oluiden nimien & postauksien haku (esim. 300ms välein)
  - Klikkaamalla yhtä hakutulosta voi käydä esimerkiksi kyseisiä asioita => A) Profiilin klikkaus vie sinut käyttäjän profiilisivulle B) Oluen/oluttyypin klikkaus vie sinut postauksiin, joissa kyseiset hakusanat löytyvät
- Postauksien yleinen suodatus (hakupalkin alla)
  - Seuratut/kaikki, viimeisimmät, eniten tykätyt (lisää?)
- Postaukset
  - Postaukset päällekkäin (postauksia ei voi erikseen avata omalle näkymälle, mutta käyttäjän nimeä painamalla pääset hänen profiiliin). Postaus sisältää postauksen lähettäjän, tekstin sekä muut tiedot (kuvan, oluen nimen, tyypin jne.) jos käyttäjä on ne antanut postauksessaan.
  - Postauksia ladataan aluksi 15-20 kpl, joita ladataan lisää sen mukaan kun käyttäjä scrollaa alaspäin



### Postauksien lisäys

Voin halutessani ilmaista mielipiteeni juomastani juomasta luomalla uuden postauksen nopeasti sovellusta käyttäen. Voin kertoa mitä juomaa nautin, sekä lisätä mahdollisen kuvan juomasta. Voin myös kirjoittaa syvemmän analyysin, johon voin muun muassa pohtia makuelämystäni sekä lisätä juoman tyypin.

#### Hyväksymiskriteerit

Käyttäjä voi sovelluksen alapalkista painamalla avata uuden lomakkeen, johon voi syöttää seuraavia tietoja:

- Kuva
- Tekstikenttä
- Juoman nimi
- Juoman tyyppi
- 1-5 arvosana, jota kuvataan kuvakkeilla

Lomakkeen lopussa on painike, jota painamalla käyttäjän syöttämät tiedot tallentuvat tietokantaan. Käyttäjälle annetaan palaute, kun tiedot ovat tallennettu tai jos mahdollinen virhe tapahtuu tietoja tallentaessa. Virheilmoitus on kuvaava ja antaa käyttäjälle mahdollisuuden ymmärtää virhetilanteen. Postaukseen pakollisia tietoja on vain teksti. Kaikki muut ovat vapaaehtoisesti lisättäviä.

#### Taskit

- Frontend
  - Lomake avaa ensisijaisesti vain kuvanapikkeen, tekstikentän, lähetä postaus -napin sekä Lisää_vaihtoehtoja -dropdownvalikon
  - Tietojen validointi
  - Lisätiedot dropdown -valikosta
  - Käyttäjän lisäämän kuvan näyttäminen  
  - Virheviestit käyttäjälle vääristä valinnoista
  - Jos postaus onnistuu käyttäjä viedään etusivulle
- Backend
  - Validointi
  - Tietojen lähetys (POST) tietokantaan
  - Palaute onnistumisesta/epäonnistumisesta käyttäjälle backendistä frontendiin näkyviin

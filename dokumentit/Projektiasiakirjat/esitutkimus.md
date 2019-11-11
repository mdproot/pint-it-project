# Esitutkimus

- [Esitutkimus](#esitutkimus)
    - [Muutoshistoria](#muutoshistoria)
  - [Projektin tiedot](#projektin-tiedot)
    - [Termit ja lyhenteet](#termit-ja-lyhenteet)
    - [Viitteet](#viitteet)
  - [Johdanto](#johdanto)
  - [Visio](#visio)
  - [Käyttäjäkertomukset](#k%C3%A4ytt%C3%A4j%C3%A4kertomukset)
    - [Rekisteröityminen](#rekister%C3%B6ityminen)
    - [Kirjautuminen](#kirjautuminen)
    - [Profiili](#profiili)
    - [Asetusvalikko](#asetusvalikko)
    - [Postausten selaus](#postausten-selaus)
    - [Postauksen lisäys](#postauksen-lis%C3%A4ys)
  - [Tekniset vaatimukset](#tekniset-vaatimukset)
  - [Ratkaisuvaihtoehdot](#ratkaisuvaihtoehdot)
    - [Ratkaisuvaihtoehto 1](#ratkaisuvaihtoehto-1)
      - [Angular, Node, Express, MariaDB, NativeScript](#angular-node-express-mariadb-nativescript)
      - [Toteutusympäristö](#toteutusymp%C3%A4rist%C3%B6)
      - [Toteutettavat kertomukset](#toteutettavat-kertomukset)
      - [Työmääräarviot](#ty%C3%B6m%C3%A4%C3%A4r%C3%A4arviot)
      - [Pros and Cons](#pros-and-cons)
    - [Ratkaisuvaihtoehto 2](#ratkaisuvaihtoehto-2)
      - [Angular, Node, Express, MariaDB, Ionic](#angular-node-express-mariadb-ionic)
      - [Toteutusympäristö](#toteutusymp%C3%A4rist%C3%B6-1)
      - [Toteutettavat kertomukset](#toteutettavat-kertomukset-1)
    - [Pros and Cons](#pros-and-cons-1)
  - [Yhteenveto](#yhteenveto)

### Muutoshistoria

| Päivämäärä | Versio |  Muutoksen tekjiä | Muutos |
|---|---|---|---|
22.01.2019 | V.0.0 | Antony Smal | Esitutkimuksen luonti
22.01.2019 | V.0.1 | Palenius Marcus | Käyttäjäkertomuksien päivitystä
23.01.2019 | V.0.2 | Palenius Marcus | Käyttäjäkertomuksien päivitystä
23.01.2019 | V.0.2 | Antony Smal | Käyttäjäkertomuksien päivitystä
24.01.2019 | V.1.0 | Palenius Marcus | Ensimmäinen auditointi
24.01.2019 | V.1.1 | Palenius Marcus | Dokumentti oikoluettu ja auditoitu @Pölkki. HLTP-linkki puuttuu toistaiseksi.

## Projektin tiedot

Pint.it

Tekijät:
- Christian Kätkä
- Panu Laitinen
- Marcus Palenius
- Samuli Rukkila
- Antony Smal

### Termit ja lyhenteet

| Termi | Kuvaus |
|---|---|
GIT | Versionhallintajärjestelmä
GitHub | Palvelu joka on rakennettu GIT versionhallinnan ympärille
Markdown | Merkkauskieli
NPM | Node Package Manager - Pakettimanageri
NativeScript | Mobiilisovelluskehys

### Viitteet

| Viittaus | Materiaali |
|---|---|
HLTP | \<linkki hltp dokumenttiin>

## Johdanto

Tämän dokumentin tarkoituksena on selvittää onko projektista syntyvä tuote mahdollinen ja kannattava toteuttaa. 

## Visio

**Slogan:** Oluiden sosiaalinen media.

Haluamme tarjota ihisille motivaattorin yhteisökokemukseen oluen parissa. Tulevaisuudessa näemme sovelluksen olevan tapa tuoda laatuoluita loppukäyttäjien tietoon sekä kannustamaan ihmisiä vastuulliseen juomiseen, ja juomaan vähemmän, mutta laatua.

## Käyttäjäkertomukset

### Rekisteröityminen

Voin rekisteröityä palveluun Google- tai Facebook-tilini kautta tai rekisteröitymislomakkeella.

**Hyväksymiskriteeri**

Sovelluksen avattuani pyydetään minua kirjautumaan sisään tai rekisteröitymään. Rekisteröitymisnappia painamalla avautuu modaali-ikkuna, jossa lomake pyytää minulta käyttäjänimen, sähköpostin ja salasanan. Oikeelliset tiedot annettuani saan tiedon rekisteröitymisen onnistumisesta ja minulle lähetetään viesti sähköpostitse. Jos antamani tiedot ovat määritysten vastaiset, minulle näytetään virheviesti

### Kirjautuminen

Sovellukseen kirjautuminen onnistuu luomillani tunnuksilla. Avattuani sovelluksen ja painettuani sisäänkirjautumisnappia avautuu modaali-ikkuna, johon sähköpostiosoite tai salasana kirjoitetaan. Sosiaalista loginia käytettäessä kirjautuminen onnistuu nopeammin. Minulle tulee ilmoittaa, mikäli kirjautumistietoni eivät täsmää.

**Hyväksymiskriteeri**

Salasanani unohtuessa minulle voidaan lähettää sähköpostiviesti salasanan vaihtamista varten. Sosiaalista kirjautumista käyttäessäni minun ei tarvitse kirjoittaa tunnuksiani yhä uudestaan, vaan kirjautumiseni varmennetaan esimerkiksi Facebookin kautta. Ensimmäisellä kirjautumiskerralla valitsen käyttäjänimen Kirjautumisikkuna kertoo minulle, mikäli kirjautumisessa jokin meni vikaan. Kirjauduttuani sisään voin tarkastella ja muokata tietojani valikon kautta. Onnistuneen kirjautumisen jälkeen minut siirretään sovelluksen päänäkymään automaattisesti.

### Profiili

Käyttäjälle luodaan profiili, johon tallentuvat käyttäjänimi, vapaatekstimuotoinen kuvaus ja kooste käyttäjän lisäämistä arvosteluista/sisällöstä. Lisäksi profiilisivulla näytetään lukumäärät käyttäjän seuraamista profiileista sekä seuraajien määrästä. Sovelluksessa on myös profiilin asetusvalikko.

**Hyväksymiskriteerit**

Tekemäni arvostelut löytyvät profiilini alta ja profiilivalikkoon navigointi onnistuu alavalikosta. Voin selata ja muokata tekemiäni arvosteluja sekä tarkastella seuraajien ja seurattujen lukumäärää.

### Asetusvalikko

**Hyväksymiskriteeri**

### Postausten selaus

Selatessani haluan ilmaista mielipiteeni postauksesta esimerkiksi peukalosignaalilla. Suodatan postauksen ajan tai tykkäyksien lukumäärän mukaan.

**Hyväksymiskriteerit**

Käyttäjä voi antaa yläpeukaloa postauksille ja antamaan hakuparametreiksi esimerkiksi lisäysajan tai tykkäysten määrän. (Muut parametrit TBD).

### Postauksen lisäys

Voin halutessani ilmaista mielipiteeni juomastani oluesta luomalla uuden postauksen nopeasti sovellusta käyttäen. Voin kertoa mitä olutta nautin, sekä lisätä mahdollisen kuvan oluesta. Voin myös kirjoittaa syvemmän analyysin, johon voin muun muassa pohtia makuelämystäni.

**Hyväksymiskriteerit**

Käyttäjä voi sovelluksen alapalkista painamalla avata uuden lomakkeen, johon voi syöttää seuraavia tietoja:

- Kuva
- Tekstikenttä (pakollinen tieto)
- Juoman nimi
- Juoman tyyppi
- 1-5 arvosana kuvakkeilla.

Lomakkeen lopussa on painike, jota painamalla käyttäjän syöttämät tiedot tallentuvat tietokantaan. Käyttäjälle annetaan palaute, kun tiedot ovat tallennettu tai jos mahdollinen virhe tapahtuu tietoja tallentaessa. Virheilmoitus on kuvaava ja antaa käyttäjälle mahdollisuuden ymmärtää virhetilanteen. Postaukseen pakollisia tietoja on vain teksti. Kaikki muut ovat vapaaehtoisesti lisättäviä.

## Tekniset vaatimukset

1. Sovelluksen verkkoliikenne tulee salata.
2. GDPR:n mukainen datan hallinta => Tietojen salaaminen
3. Tulee toimia vähintään:
    1. Android KitKat 4.4 tai uudempi
4. Sovelluksen pitää pystyä palautumaan, mikäli se kaatuu tai suljetaan äkillisesti.
5. Sovellus sisältää dataa, jonka tulee olla ehyttä 


## Ratkaisuvaihtoehdot

### Ratkaisuvaihtoehto 1

#### Angular, Node, Express, MariaDB, NativeScript

#### Toteutusympäristö

Asiakas käyttää sovellusta mobiilialustalla, joka keskustelee palvelimen kanssa REST-apin välityksellä. Palvelimella on yhteys tietokantaan, johon asiakkaiden lisäämät tiedot tallentuvat. Tietoliikenteen salaukseen käytetään SSL-suojausta. (Let's Encrypt)

![Rakennekaavio](https://github.com/jamktiko/TC6-sip/blob/viikko1/dokumentit/kuvat/kaavio.png)

#### Toteutettavat kertomukset

Ratkaisuvaihtoehdolla kyetään toteuttamaan kaikki käyttäjäkertomukset.

#### Työmääräarviot

| Vaihe | Tunnit | Muuta?
|---|---|---|
Käynnistys | 10 |
Määrittely | 20 |
Suunnittelu | 35 |
Toteutus | 160 |
Testaus | 45 |
Käyttöönotto | 30 |
Päättäminen | 10 |
Hallinnointi | 10 |
**Yht** | 320 | 

#### Pros and Cons

**Pros**

* NativeScriptillä saadaan aikaiseksi laitteelle täysin natiivi sovellus, jolloin kaikkia laitteen toiminnallisuuksia (=kamera, gyroskooppi yms.) saadaan hyödynnettyä.

* Oppimiskokemus; NativeScript on projektiryhmälle uusi tekniikka

* Osaamista on jo (Angular, SQL, Node/Express)

**Cons**

* NativeScript on projektiryhmälle uusi tekniikka

* Vaatii enemmän työtä kuin Ionicilla toteutettuna


### Ratkaisuvaihtoehto 2

#### Angular, Node, Express, MariaDB, Ionic

#### Toteutusympäristö

Toteutusympäristö on muuten sama kuin ratkaisuvehdossa yksi, mutta NativeScript on korvattu Ionicilla. Tästä aiheutuu kehitysvaiheessa huomattavasti suurempi tarve plugineille.

#### Toteutettavat kertomukset

Kaikki ratkaisuvaihtoehdot ovat toteuttettavissa myös tällä ratkaisuvaihtoehdolla.

### Pros and Cons

**Pros**

* Ionic on kaikille _jokseenkin_ tuttu

* Ionicin plugin-tuki on laajempi

* Dokumentaatiota ja ohjeita on käytettävissä kattavammin

* Vaatii hieman vähemmän työtä

**Cons**

* Sovellus ei olisi täysin natiivi

* Ionic on vanhempi

* Laaja pluginien tarve



## Yhteenveto

Ensimmäinen ratkaisuvaihtoehto on projektiryhmän mielestä kaikin puolin parempi ratkaisu, sillä NativeScriptin valinta tarjoaa sekä oppimiskokemuksen että plugin-vapaamman kokonaisuuden.

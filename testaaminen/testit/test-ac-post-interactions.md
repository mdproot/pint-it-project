# Postauksessa vuorovaikuttaminen

## Kommentointi

### Mitä

Selatessani postauksia voin avata lisää kommentteja kommentointia kuvaavan painikkeen avulla. Minulle avautuu uusi modaali/näkymä, josta voin selata kommentteja kelaamalla näkymää alaspäin. Samaisesta näkymästä voin kirjoittaa uuden kommentin postaukseen. Voin tykätä kommenteista ja muut voivat minun kommenteista.

### Visuaalinen testaaminen

- Postauksessa näkyy 2 viimeisintä kommentia, mutta kommentointia kuvaavaa painiketta painamalla avautuu postauksen kommentti modaali näkyviin josta voi selata kommentteja.
  - Kommentteja tulee hallitusti pieni määrä (5-10), mutta kelaamalla alaspäin saa uusia kommentteja.
- Kommenttimodaalissa on selkeä painike, jota painamalla pääsee kirjoittamaan uutta kommenttia.
  - Kommenttiin voi kirjoittaa pieniä ja isoja kirjaimia, numeroita ja erikoismerkkejä
- Postauksen kommenttia voi tykätä

### Raja-arvot
- Kommenttikenttä
  - Minimipituus 1
  - Maksimipituus 500

## Tykkääminen

### Mitä

Postauksessa näkyy numeerisesti monta tykkäystä postaus on saanut. Kun näen postauksen mistä pidän, voin helposti painaa tykkäystä kuvaavaa nappia ja näin ohjelma rekisteröi minun tykkäykseni. Näen sovelluksesta visuaalisesti että olen painanut tykkäys-nappia. Jos en pidäkkään enää postauksesta, voin poistaa oman tykkäykseni painamalla tykkäys nappia uudelleen ja saan visuaalisen palautteen siitä etten ole tykännyt postauksesta enää.

### Visuaalinen testaaminen

- Postauksessa on painike, joka näyttää tykkäämisen visuaalisesti
- Postauksen tykkäyskuvaketta voi painaa, jonka jälkeen kuvakkeen väri ilmoittaa onko postauksesta jo tykätty
- Postauksen tykkäyskuvaketta painamalla silloin, kun se on aktiivinen poistuu suorittamani tykkäys postauksesta.
- Postauksssa näkyvä tykkäysmäärä ilmoittaa numerona, kuinka moni käyttäjä on tykännyt postauksesta. Se päivittyy jos tykkään postauksesta tai lopetan postauksesta tykkäämisen.

### Tietokanta

- Varmistetaan, että tykkäykset ja kommentit ja tallentuvat tietokantaan asianmukaisesti

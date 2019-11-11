# Postausten luomisen hyväksymiskriteerit

## Mitä
Postauksen luominen on keskeinen osa sovelluksen sisällöntuotantoa. Postaus sisältää kuvan, juoman nimen, juoman tyypin, arvosanan ja itse tekstin. Käyttäjän puolesta pakollisena tietona on vain teksti, lopuista huolehtii automaatio (ie. käyttäjänimi ja ID).

## Testit

#### Backend-ohjelmakoodi

- Postman-yksikkötestaukset ie. virheellisen tiedon tahallinen syöttäminen
  - Savutestaus
- Tarkistetaan, tallentuvatko käyttäjien julkaisemat postaukset tietokantaan.
- Yleisimmät injektiot (esimerkiksi SQL)


#### Frontend-ohjelmakoodi ja raja-arvot

- Lomakkeen testaus
  - Liian pitkät nimet
  - Erikoismerkit
  - Jne

- Lomakkeen tiedot:
  - Oluen nimi
    - Ei pakollinen tieto
    - Maksimipituus 100 merkkiä
    - Minimipituus 3
  - Postaus
    - Pakollinen tieto
    - Minimipituus 1 
    - Maksimipituus 1000
  - Arvosana
    - Ei pakollinen tieto
  - Kuva
    - 
  - Oluen tyyppi
    - Minimipituus 1
    - Maksimipituus 40
    - Ei pakollinen tieto 

### Visuaalinen
- Postauksen luomisessa juoman tyypin valinta on modaalivalikko / pudotusvalikko
- Kuvan lisääminen tulee tapahtua napista, joka avaa kameran. Mikäli käyttäjä on ottanut kuvan jo aikaisemmin, se voidaan valita kameran camera roll-kuvista / galleriasta
- Elementit ovat niille määrätyissä paikoissa


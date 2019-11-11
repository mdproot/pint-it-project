# Navigaation hyväksymiskriteerit
## Mitä
Navigaatio on sovelluksen osa, jonka avulla käyttäjä voi vaihtaa sivuja/näkymiä. Navigaatiota käytetään niin, että käyttäjän alakulmassa näkyy navigointipalkki, jonka painikkeita voi painaa, ja ne siirtävät käyttäjän valitsemaansa näkymään. 

## Testit

### Frontend

- Navigaatiopalkin routing toimii oikein

### Visuaalinen
- Navigointipalkin tulee sijaita sovelluksen alaosassa. 
- Navigointipalkki ei liiku, kun sovelluksessa pyyhkäistään ylös, alas, vasemmalle tai oikealle.
- Navigaatiopalkin painikkeissa on kuvakkeet. Kuvakkeita painamalla käyttäjä viedään kuvakkeen mukaiseen näkymään
    - Esimerkiksi, jos kuvakkeena on hammasratas, niin kuvaketta painamalla pitäisi siirtyä asetukset-näkymään.
- Navigaatiopalkki korostaa sen iconin, joka vastaa sitä näkymää missä käyttäjä sillä hetkellä on.

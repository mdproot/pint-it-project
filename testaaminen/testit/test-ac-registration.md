# Rekisteröitymisen hyväksymiskriteerit
## Mitä

Käyttäjä voi rekisteröityä palveluun Google- tai Facebook-tilin kautta social loginin avulla, tai käyttämällä rekisteröitymislomaketta.

## Testit

### Backend ohjelmakoodi
- Tarkastetaan, toimiiko salaus oikein. Tiedot tallentuvat tietokantaan kryptattuna.
- kun käyttäjä kirjautuu social logninilla, tarkistetaan että tokeni/ID tallentuu kantaamme.


### Frontend ohjelmakoodi

- Lomakkeen testaus
  - Käyttäjänimi
    - Minimipituus 3
    - Maksimipituus 30
  - Salasana
    - Minimipituus 10
    - Maksimipituus 30

### Visuaalinen
- Sovelluksen avauduttua käyttäjää pyydetään kirjautumaan sisään tai rekisteröitymään.
- Rekisteröitymisnappia painamalla avautuu modaali-ikkuna, jossa lomake pyytää käyttäjältä käyttäjänimen ja salasanan. 
- Oikeelliset tiedot annettua käyttäjä saa tiedon rekisteröitymisen onnistumisesta ja käyttäjälle lähetetään viesti sähköpostitse.
- Jos käyttäjän antamat tiedot ovat määritysten vastaiset, käyttäjälle näytetään virheviesti.

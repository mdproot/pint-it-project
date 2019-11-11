# Postausten lukemisen hyväksymiskriteerit

## Mitä
Pystyn tykkäämään sekä kommentoimaan mitä tahansa postausta, pystyn myös tykkäämään postauksien kommenteista. Käyttäjä näkee aina sovellukseen kirjautuessaan viisi viimeisintä postausta, joita voidaan filtteröidä kavereiden tai kaikkien käyttäjien välillä. Postauksia voi painaa näkyviin lisää aina viisi kerrallaan. Liian pitkien postauksien ylimenevät merkit piilotetaan automaattisesti ja voin avata ne suurempaan näkymään halutessani. Painamalla minkä tahansa postauksen kirjoittajan/kommentoijan nimeä, pääsen hänen profiilisivullensa.

## Testit

#### Backend-ohjelmakoodi

#### Frontend-ohjelmakoodi
  
### Visuaalinen
- Kun käyttäjä avaa sovelluksen, hän siirtyy etusivulle ja saa viisi postausta näkyville
  - Postauksia voi suodattaa seuraavien kategorioiden mukaan; Kaikki & Seuratut
  - Postauksen järjestystä voi suodattaa päivämäärän tai suosituimpien mukaan
  - Postauksessa tulee näkyä seuraavat tiedot;
    - Postaajan nimi, jota klikkaamalla pääsee postaajan profiiliin
    - Postaajan kuva
    - Päivämäärä
      - JOS postauksen julkaisuhetkestä on **alle tunti** näytetään minuutteina julkaisusta.
      -  JOS postauksen julkaisuhetkestä on **alle 24h** näytetään tunteina julkaisusta.
       - JOS postauksen julkaisuhetkestä on **alle viikko** näytetään päivinä julkaisusta.
      - JOS postauksen julkaisuhetkestä on **yli viikko** näytetään päivämääränä julkaisusta.
    - ( kuva )
    - Postauksen sisältö
    - ( arvosana )
- Postauksia saa lisää kun kelaa sovelluksen näkymää alaspäin
- Postauksessa näkyy tykkäysten määrä ja kommenttien määrä
- Postauksen alla näkyy kaksi viimeisintä kommenttia

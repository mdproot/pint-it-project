# Testiautomaatioajoympäristön asennusohjeet peruskoulun ala-astetta varten, lyhyt oppimäärä

## Terminologia

| Termi | Selite |
|--|--|
| Robot Framework | Automaatiokehys testaukseen, jonka notaation avulla testit kirjoitetaan. |
| Appium | Automaatiokehys ja palvelin, joka kuuntelee komentoja ja ajaa ne mobiilisovelluksessa.
| JDK | Java Development Kit, eli Java-ohjelmien tuottoon tarvittava kehitystyökalupaketti | 
| Android SDK | Android-sovelluskehitykseen tarvittava työkalupaketti
| pip | Pip installs packages, Python-pakettimanageri |
| WebDriver | Seleniumin WebDriver, joka ajaa verkkoselainta natiivisti aivan, kuten käyttäjäkin ajaa
| Android Studio | Android-sovelluskehitykseen räätälöity IDE
| cURL | Tiedonsiirtoon tarkoitettu komentorivipohjainen työkalu mm. URL-osoitteiden hakemiseen
| API | Ohjelmointirajapinta


## Testiympäristön asennus

### Johdanto

Automatisoitujen testien ajaminen vaatii sille räätälöidyn ajoympäristön, joka tässä projektissa koostuu Robot Framework-automaatiokehyksestä sekä Appium-palvelimesta. Edellä mainitut komponentit vaativat toimiakseen joitakin riippuvuuksia, mainittaen Pythonin, joka useista työympäristöistä löytyy ennalta asennettuna. Tämä dokumentaatio olettaa, että käyttäjällä on asennettuna Pythonin versio 2.7.x. Lisäksi emulaattori tarvitsee JDK:n ja Android SDK:n.

#### Tarkastuslista asennusta varten
- Python 2.7.9 tai uudempi
- pip
  - `curl https://raw.github.com/pypa/pip/master/contrib/         get-pip.py > get-pip.py`
- Robot Framework
  - `pip install robotframework`
- Appium-kirjasto
  - `pip install robotframework-appiumlibrary`
- Appium-palvelin
  - `npm install -g appium`

### Palvelimen asennus

Appium ja WebDriver eivät käytännössä ottaen ole testiautomaatiokehyksiä, vaan automaatiokirjastoja. WebDriverin protokollaa laajennettiin ja siihen lisättiin API-metodeja mobiilisovellusten testausta varten. Tarkastuslistasta löytyvän komennon ajon jälkeen käyttäjä voi ajaa komennon `appium` komentokehotteessa. Palvelimen päällä olemisen voi tarkastaa ajamalla komennon `netstat -an |grep 4723`. 

### JDK, SDK ja ympäristömuuttujat
Tämän projektin näkökulmasta Android SDK:n asennus lienee järkevintä tehdä asentamalla Android Studio, sillä edellä mainittu asentaa SDK:n käyttäjän puolesta. Asennuksen jälkeen SDK:n sijainti löytyy yleensä käyttäjän kotihakemistosta _/Android/Sdk_-hakemiston alta. Ympäristömuuttujat käyttäjän tulee kuitenkin asettaa lisäämällä esimerkiksi _.bashrc_-tiedostoon seuraavat rivit:
```bash
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
```
#### JDK 

JDK:n asennus Linux-työasemalle onnistuu lataamalla JDK-arkistobinääri Oraclen sivuilta. Projektin automaatiotestauksessa JDK-version tulee olla versioperheestä 1.8. _.tar.gz_-arkistobinäärin voi purkaa komennolla `tar -zxvf` ja passaamalla sille binäärin nimen. Sijoita JDK _/usr/bin_-hakemistoon. Sijoita lopuksi ympäristömuuttujan asetus _.bashrc_-tiedostoon, aivan kuten Android SDK:n kanssa. Voit käyttää alla olevaa komentoa.

```bash
export JAVA_HOME=$(update-alternatives --query javac | sed -n -e 's/Best: *\(.*\)\/bin\/javac/\1/p')
```

### Emulaattori

Emulaattorin käynnistys lienee aluksi helpointa Android Studion kautta, joka tarjoaa graafisen käyttöliittymän mm. Android-APIn valintaan. Projektissa API-versio on 22. 

- Avaa Android Studio
- Valitse yläpaneelista Tools
- Valitse AVD manager
- Valitse alhaalta Create virtual device
- Valitse laite
  - Itse laitteella ei ole suurta merkitystä, esimerkiksi Pixel XL käy hyvin
- Valitse APIn versioksi 22

Emulaattorin ollessa käynnissä voidaan sillä avata projekti joko Android Studion kautta tai passaamalla Robot Frameworkin komentolinjakäyttöliittymälle komento. Komennon tulee sisältää arvoasetukset muuttujille, ajettavan ohjelman .apk-paketti ja osoitus hakemistoon, jossa ajettavat testit olevat. Tässä projektissa esimerkkinä komentorakenteesta toimii
```bash 
robot -v deviceName:"Pixel_XL_API_22" -v deviceId:"emulator-5554" -v appBinary:`pwd`/app-debug.apk tests/testi.robot
```
jossa laitteen nimen ja ID:n voi selvittää komennoilla `emulator -list-avds`, joka tulostaa laitteen nimen. Ajamalla `adb devices` sen jälkeen, kun emulaattori on käynnissä, tulostuu laitteen ID. Komennon valitsin `-v` siis asettaa näiden testitiedostosta löytyvien muuttujien arvoiksi komennossa antamamme arvot. Mikäli nämä arvot eivät ajoympäristössä muutu, voidaan ne myös kovakoodata suoraan testiin. Huomaathan, että komentojen `emulator` ja `adb` ajaminen ei onnistu, mikäli ympäristömuuttujia ei ole oikein asetettu. Voit toki myös ajaa komennot suoraan _/Android/Sdk/tools/_-hakemistossa. Lisää tällöin komennon alkuun ./-notaatio.

Iloista testaamista. Lisätietoja antaa  

_Marcus Palenius_  
_marcus.palenius@protonmail.com_


*** Settings ***
Library  AppiumLibrary  10
Suite Setup  Open Application  http://localhost:4723/wd/hub
             ...  platformName=Android
             ...  deviceName=${deviceName}
             ...  udid=${deviceId}
             ...  app=${appBinary}
             ...  automationName=uiautomator2
Suite Teardown  Close Application

*** Test Cases ***
Avaa Sovellus Ja Navigoi Postaussivulle
    Page Should Contain Element  xpath=//android.widget.Button[@index='2' and @bounds='[576,2217][864,2385]']
    Tap     xpath=//android.widget.Button[@index='2' and @bounds='[576,2217][864,2385]']

Siirry Postauksen Lisatietosivulle
    Swipe Left
    Page Should Contain Element     xpath=//android.view.View[@index='1']

Lisaa Oluen Nimi Seka Oluen Tyyppi
    Input Text  xpath=//android.widget.EditText[@index='1' and @bounds='[81,661][1359,799]']  Koff
    Input Text  xpath=//android.widget.EditText[@index='1' and @bounds='[81,1092][1359,1230]']    Lager

Palaa Takaisin Postaussivulle
    Page Should Contain Element       xpath=//android.widget.Button[@bounds='[35,2014][720,2182]']
    Tap     xpath=//android.widget.Button[@bounds='[35,2014][720,2182]']

Kirjoita Ja Laheta Postaus
    Input Text  xpath=//android.widget.EditText[@bounds='[36,1432][1404,1957]']  Ihan peruskamaa
    Page Should Contain Element     xpath=//android.widget.Button[@bounds='[74,2003][876,2171]']
    Tap     xpath=//android.widget.Button[@bounds='[74,2003][876,2171]']
    Sleep   5s

*** Keywords ***
 Swipe Left
  ${element_size}=  Get Element Size    xpath=//android.view.View[@index='1']
  ${element_location}=  Get Element Location     xpath=//android.view.View[@index='1']
  ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.9)
  ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
  ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.2)
  ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.5)
  Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500



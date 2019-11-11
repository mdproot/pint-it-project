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
Avaa sovellus ja oleta vastaukseksi kirjautumisnäkymää
    Page Should Contain Element     xpath=//android.view.ViewGroup[@bounds='[26,410][1054,1065]']
    BuiltIn.Sleep   1s
    Tap     xpath=//android.widget.TextView[@bounds='[65,975][1015,1026]']

Oleta rekisteröinti-lomaketta, täytä tiedot ja rekisteröidy
    BuiltIn.Sleep   1s
    Input Text      xpath=//android.view.ViewGroup[@index='0']/android.view.ViewGroup[@index='1']/android.view.EditText[@index='1']  robotti
    Input Text      xpath=//android.view.ViewGroup[0]/android.view.ViewGroup[2]/android.view.EditText[@index='1']     robo12345
    Input Text      xpath=//android.view.ViewGroup[0]/android.view.ViewGroup[3]/android.view.EditText[@index='1']     robo12345
    Tap     xpath=//android.view.Button[@bounds='[243,842][837,968]']
    BuiltIn.Sleep   2s

Rekisteröinti onnistui ja pääsin etusivulle
    Page Should Contain Element     xpath=//android.view.ViewGroup[@bounds='[0,1663][1080,1794]']
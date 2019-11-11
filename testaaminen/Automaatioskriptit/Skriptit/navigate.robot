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
    Tap     xpath=//android.widget.TextView[@text='DEV']
    BuiltIn.Sleep   1s
    Tap     xpath=//android.widget.Button[@index='2']
Siirry Kotisivulle
    Tap     xpath=//android.widget.Button[@index='0']
    BuiltIn.Sleep   1.5s
Siirry Notifikaatiosivulle
    Tap     xpath=//android.widget.Button[@index='1']
    BuiltIn.Sleep   1.5s
Siirry Profiilisivulle
    Tap     xpath=//android.widget.Button[@index='3']
    BuiltIn.Sleep   1.5s
Siirry Asetussivulle
    Tap     xpath=//android.widget.Button[@index='4']
    BuiltIn.Sleep   1.5s

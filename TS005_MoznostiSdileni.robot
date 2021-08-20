*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource    ./Variables/URLs.robot
Resource    ./Variables/Browsers.robot
Resource    ./Variables/Buttons.robot
Resource    ./Variables/Inputs.robot
Resource    ./Variables/Values.robot
Resource    ./Variables/UserCredentials.robot
Resource    ./Variables/ListItems.robot
Resource    ./Variables/Panels.robot
Resource    ./Variables/Headers.robot
Resource    ./Variables/Images.robot

*** Test Cases ***
Pre-conditions - TS005_MoznostiSdileni
    Set Selenium Speed  0.2
    Open Browser    ${URL_Mapy.cz}    ${ProhlizecChrome}
    Maximize Browser Window




TC_015 - Sdílení pomocí odkazu
    Click Element    ${Button_Trasa}
    Input Text    ${Inputs_StartTrasy}    ${Values_Zlin}
    Press Keys    None    ENTER
    Wait Until Element Is Visible    ${Header_StartTrasyRelative}
    Input Text    ${Inputs_CilTrasy}    ${Values_Napajedla}
    Press Keys    None    ENTER
    Wait Until Element Is Visible    ${Button_Sdilet}
    Click Element    ${Button_Sdilet}
    Element Should Be Visible    ${Inputs_URLShortcut}
    Element Should Be Visible    ${Button_KopirovatOdkaz}




TC_016 - Sdílení pomocí odkazu Facebook
    Click Element    ${Button_SdiletFacebook}
    Switch Window    ${Values_Facebook}
    Location Should Contain    ${URL_Facebook.com}

Post-conditions - TC_016 - Sdílení pomocí odkazu Facebook
    Close Window
    Switch Window    MAIN



   
TC_017 - Sdílení pomocí emailu
    Click Element    ${Button_SdiletEmail}
    Input Text    ${Inputs_EmailPrijemce}    ${Values_Email}
    Input Text    ${Inputs_EmailZprava}    ${Values_ZpravaPrijemci}
    Click Button    ${Button_OdeslatEmail}
    Element Should Be Visible    ${Header_UpozorneniNaPrihlaseni}




TC_018 - Sdílení pomocí QR kódu
    Click Element    ${Button_SdiletQRKod}
    Element Should Be Visible    ${Image_QRKod}
    Click Element    ${Button_StahnoutPNG}


TC019 - Vložení mapy do vlastních stránek
    Click Element    ${Button_VlozitMapuDoVlastnichStranek}
    Click Element    ${Button_ZmenVelikostMapy}
    Click Element    ${ListItem_MalaMapa}
    Click Element    ${Button_ZmenVelikostMapy}
    Click Element    ${ListItem_StredniMapa}
    Click Element    ${Button_ZmenVelikostMapy}
    Click Element    ${ListItem_VelkaMapa}
    Click Element    ${Button_ZmenVelikostMapy}
    Click Element    ${ListItem_VlastniMapa}
    Click Element    ${Button_ZmenNahledovaMapa}
    Click Element    ${ListItem_MapaCR}
    Click Element    ${Button_ZmenNahledovaMapa}
    Click Element    ${ListItem_MapaSvet}
    Element Should Be Visible    ${Image_iFrame_VygenerovanaMapa}



Post-conditions - TS005_MoznostiSdileni
    Click Element  ${Button_ZrusitSdilet}
    Close Browser


    

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

*** Test Cases ***
Pre-conditions - TS010_DalsiMoznostiPlanovani
    Set Selenium Speed  0.2
    Open Browser    ${URL_Mapy.cz}    ${ProhlizecChrome}

TC050 - Počasí na trase
    Click Element    ${Button_Trasa}
    Input Text    ${Inputs_StartTrasy}    ${Values_Zlin}
    Press Keys    None    ENTER
    Wait Until Element Is Visible    ${Header_StartTrasyRelative}
    Input Text    ${Inputs_CilTrasy}    ${Values_Napajedla}
    Press Keys    None    ENTER
    Wait Until Element Is Visible    ${Button_Pocasi}
    Click Element    ${Button_Pocasi}
    Wait Until Element Is Visible    ${Panel_PocasiMoznosti}



TC051 - Změna varianty Počasí
    Wait Until Element Is Visible    ${Button_PocasiTeplota}
    Click Element    ${Button_PocasiTeplota}
    Click Element    ${Button_PocasiSrazky}
    Click Element    ${Button_PocasiVitr}

TC053 - Výškový profil trasy
    Click Element    ${Button_VyskovyProfil}
    Wait Until Element Is Visible     ${Panel_VyskovyProfil}

TC054 - Itinerář
    Click Element    ${Button_Itinerar}
    Wait Until Element Is Visible     ${ListItem_Itinerar}
    Click Element    ${ListItem_Itinerar}

Post-conditions - TS010_DalsiMoznostiPlanovani
    Close Browser
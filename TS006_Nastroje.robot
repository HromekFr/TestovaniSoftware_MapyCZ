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
Pre-conditions - TS006_Nastroje
    Set Selenium Speed  0.2
    Open Browser    ${URL_Mapy.cz}    ${ProhlizecChrome}
    Maximize Browser Window




TC020 - Panel nástroje
    Click Element    ${Button_Nastroje}
    Wait Until Element Is Visible    ${Panel_Nastroje}




TC021 - Tisk
    Click Element    ${Button_Tisk}
    Switch Window    NEW

Post-conditions - TC021 - Tisk
    Close Window
    Switch Window    MAIN



TC022 - Stáhnout jako obrázek
    Set Selenium Implicit Wait  5
    Click Element    ${Button_Nastroje}
    Wait Until Element Is Visible    ${Button_StahnoutJakoObrazek}
    Click Element    ${Button_StahnoutJakoObrazek}


Post-conditions - TS006_Nastroje
    Close Browser
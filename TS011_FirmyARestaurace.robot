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
Pre-conditions - TS011_FirmyARestaurace
    Set Selenium Speed  0.2
    Open Browser    ${URL_Mapy.cz}    ${ProhlizecChrome}


TC055 - Restaurace - Recenze
    Element Should Be Visible    ${Inputs_SearchBar}
    Input Text    ${Inputs_SearchBar}    ${Values_StaraPromin}
    Press Keys    None    ENTER
    Wait Until Element Is Visible    ${Header_MistoNadpisRelative}
    Element Should Be Visible    ${Panel_Recenze}
    Click Element    ${Button_RecenzeMoznosti}
    Element Should Be Visible    ${Button_NahlasitProblem}

Post-conditions - TS011_FirmyARestaurace
    Close Browser
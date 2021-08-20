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
Pre-conditions - TS001_VyhledavaciPole
    Set Selenium Speed  0.2
    Open Browser    ${URL_Mapy.cz}    ${ProhlizecChrome}
    Maximize Browser Window

TC_001 - Vyhledávání podle názvu města
    Element Should Be Visible    ${Inputs_SearchBar}
    Input Text    ${Inputs_SearchBar}    ${Values_Zlin}
    Press Keys    None    ENTER
    Wait Until Element Is Visible    ${Header_Zlin}

Post-conditions - TC_001 - Vyhledávání podle názvu města
    Click Element    ${Button_Zavrit}




TC_002 - Vyhledávání podle PSČ
    Element Should Be Visible    ${Inputs_SearchBar}
    Input Text    ${Inputs_SearchBar}    ${Values_PSC}    True
    Press Keys    None    ENTER
    Wait Until Element Is Visible    ${Header_PSC}

Post-conditions - TC_002 - Vyhledávání podle PSČ
    Wait Until Element Is Visible     ${Button_Zavrit}
    Click Element    ${Button_Zavrit}




TC_003 - Vyhledávání podle GPS souřadnic
    Element Should Be Visible    ${Inputs_SearchBar}
    Input Text    ${Inputs_SearchBar}    ${Values_GPS}    True
    Press Keys    None    ENTER
    Wait Until Element Is Visible    ${Header_GPS}

Post-conditions - TC_003 - Vyhledávání podle GPS souřadnic
    Click Element    ${Button_Zavrit}
    Wait Until Element Is Visible    ${Button_DeleteSearchInput}
    Click Element    ${Button_DeleteSearchInput}




TC_004 - Vyhledávání podle kategorií
    Wait Until Element Is Visible    ${Button_Restaurace}
    Click Element    ${Button_Restaurace}
    Wait Until Element Is Visible    ${ListItem_Restaurace}

Post-conditions - TS001_VyhledavaciPole
    Close Browser


    

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
Pre-conditions - TS002_FormatyMapy
    Set Selenium Speed  0.2
    Open Browser    ${URL_Mapy.cz}    ${ProhlizecChrome}
    Maximize Browser Window

TC_005 - Letecká Mapa
    Element Should Be Visible    ${Inputs_SearchBar}
    Input Text    ${Inputs_SearchBar}    ${Values_VelkaDestna}
    Press Keys    None    ENTER
    # Click Element    ${Button_VelkaDestnaVyhledavani}
    Click Element   ${Button_ZLetadla}

Post-conditions - TC_005 - Letecká Mapa
    Click Element   ${Button_ZLetadla}
    Click Element    ${Button_Zavrit}

TC_007 - Zimní mapa - TC_007 - Zimní mapa
    Input Text    ${Inputs_SearchBar}    ${Values_JizerskaPadesatka}    True
    Click Element    ${Button_ZmenitMapu}
    Wait Until Element Is Visible    ${ListItem_ZimniMapa}
    Click Element    ${ListItem_ZimniMapa}

Post-conditions - TS002_FormatyMapy
    Close Browser


    

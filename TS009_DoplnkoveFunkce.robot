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
Pre-conditions - TS009_DoplnkoveFunkce
    Set Selenium Speed  0.2
    Open Browser    ${URL_Mapy.cz}    ${ProhlizecChrome}

TC048 - Přepínaní jazyku rozhraní
    Click Element    ${Button_NastaveniJazyka}
    Click Element    ${ListItem_NastaveniJazyka1}
    Wait Until Element Is Visible    ${Button_PrihlaseniOdkaz}
    Element Should Contain    ${Button_PrihlaseniOdkaz}    ${Values_Polski}
    Click Element    ${Button_NastaveniJazyka}
    Click Element    ${ListItem_NastaveniJazyka1}
    Wait Until Element Is Visible    ${Button_PrihlaseniOdkaz}
    Element Should Contain    ${Button_PrihlaseniOdkaz}    ${Values_Deutsch}
    Click Element    ${Button_NastaveniJazyka}
    Click Element    ${ListItem_NastaveniJazyka2}
    Wait Until Element Is Visible    ${Button_PrihlaseniOdkaz}
    Element Should Contain    ${Button_PrihlaseniOdkaz}    ${Values_Slovencina}
    Click Element    ${Button_NastaveniJazyka}
    Click Element    ${ListItem_NastaveniJazyka3}
    Wait Until Element Is Visible    ${Button_PrihlaseniOdkaz}
    Element Should Contain    ${Button_PrihlaseniOdkaz}    ${Values_English}

Post-conditions
    Close Browser
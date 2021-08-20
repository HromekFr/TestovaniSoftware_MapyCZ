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
Pre-conditions - TS007_VyletPoOkoli
    Set Selenium Speed  0.2
    Open Browser    ${URL_Mapy.cz}    ${ProhlizecChrome}
    Maximize Browser Window




TC026 - Plánování výletu
    Click Element    ${Button_Trasa}
    Input Text    ${Inputs_StartTrasy}    ${Values_Paprsek}
    Press Keys    None    ENTER
    Wait Until Element Is Visible    ${Button_VyletPoOkoli}
    Click Element    ${Button_VyletPoOkoli}




TC027 - Možnost pěší, cyklistický, běžkařský výlet
    Wait Until Element Is Visible    ${Button_Pesi}
    Click Element    ${Button_Pesi}
    Wait Until Element Is Visible    ${Button_NaKole}
    Click Element    ${Button_NaKole}
    Wait Until Element Is Visible    ${Button_NaBezkach}
    Click Element    ${Button_NaBezkach}

Post-conditions - TC027 - Možnost pěší, cyklistický, běžkařský výlet
    Wait Until Element Is Visible    ${Button_Pesi}
    Click Element    ${Button_Pesi}
    Wait Until Element Is Visible    ${Panel_VyletPoOkoliInfo}




TC028 - Nastavení délky trasy
    Wait Until Element Is Visible    ${Button_SliderDelkaTrasy}
    Drag and Drop By Offset    ${Button_SliderDelkaTrasy}    100   0
    Wait Until Element Is Visible    ${Button_NaKole}
    Click Element    ${Button_NaKole}
    Wait Until Element Is Visible    ${Button_SliderDelkaTrasy}
    Set Browser Implicit Wait    5
    Drag and Drop By Offset    ${Button_SliderDelkaTrasy}    150   0
    

    

TC029 - Co cestou uvidíte
    Wait Until Element Is Visible    ${Header_PlanovaniPoOkoliDestinace}
    Wait Until Element Is Visible    ${ListItem_CoCestouUvidite}
    Set Selenium Implicit Wait    5
    Click Element    ${ListItem_CoCestouUvidite}


    

Post-conditions - TS007_VyletPoOkoli
    Close Browser
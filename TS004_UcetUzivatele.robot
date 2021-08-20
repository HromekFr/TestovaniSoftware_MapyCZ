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
Pre-conditions - TS004_UcetUzivatele
    Set Selenium Speed  0.2
    Open Browser    ${URL_Mapy.cz}    ${ProhlizecChrome}

TC_010 - Přihlášení
    Click Element    ${Button_PravyPanelMoznost3}
    Click Element    ${Button_PrihlasitSe}
    Switch Window    NEW
    Element Should Be Visible    ${Inputs_LoginID}
    Input Text    ${Inputs_LoginID}    ${UserCredentials_UserName}
    Input Text    ${Inputs_LoginPass}    ${UserCredentials_Password}
    Click Element    ${Button_PrihlasitSe}
    
Post-conditions - TC_010 - Přihlášení
    Switch Window    MAIN   



TC_011 - Vytvoření složky pro ukládání záznamů
    Click Element    ${Button_VytvoritSlozku}
    Input Text    ${Inputs_NazevSlozky}    ${Values_NazevSlozky}
    Click Element    ${Button_UlozitSlozku}





TC_012 - Uložení záznamu do složky z funkce plánování
    Click Element    ${Button_Trasa}
    Input Text    ${Inputs_StartTrasy}    ${Values_Zlin}
    Press Keys    None    ENTER
    Wait Until Element Is Visible    ${Header_TrasaZlin}
    Input Text    ${Inputs_CilTrasy}    ${Values_Napajedla}
    Press Keys    None    ENTER
    Wait Until Element Is Visible    ${Header_TrasaNapajedla}
    Click Element    ${Button_UlozitTrasu}
    Click Element    ${Button_VyberSlozky}
    Click Element    ${ListItem_DruhaSlozka}
    Click Element    ${Button_Ulozit}




TC_013 - Nastavení adresy domů
    Click Element    ${Button_MojeMapy}
    Click Element    ${Button_NastaveniAdresyDomu}
    Input Text    ${Inputs_Adresa}    ${Values_OnenSvet}    True
    Press Keys    None    ENTER




TC_014 - Nastavení adresy do práce
    Wait Until Element Is Visible     ${Button_NastaveniAdresyDoPrace}
    Click Element    ${Button_NastaveniAdresyDoPrace}
    Input Text    ${Inputs_Adresa}    ${Values_Flusarna}    True
    Press Keys    None    ENTER
    Click Element    ${Button_Trasa}


    

Post-conditions - TS004_UcetUzivatele
    Click Element    ${Button_MojeMapy}
    Click Element    ${Button_MoznostiSlozky}
    Click Element    ${ListItem_SmazatSlozku}
    Click Element    ${Button_Smazat}
    Click Element    ${Button_UpravitAdresuDomu}
    Input Text    ${Inputs_Adresa}     ${EMPTY}
    Press Keys    None    ENTER
    Wait Until Element Is Visible    ${Button_UpravitAdresuDoPrace}
    Click Element    ${Button_UpravitAdresuDoPrace}
    Input Text    ${Inputs_Adresa}     ${EMPTY}
    Press Keys    None    ENTER
    Close Browser


    

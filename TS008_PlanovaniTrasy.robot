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
Pre-conditions - TS008_PlanovaniTrasy
    Set Selenium Speed  0.2
    Open Browser    ${URL_Mapy.cz}    ${ProhlizecChrome}

TC030 - Základní plánování autem
    Click Element    ${Button_Trasa}
    Input Text    ${Inputs_StartTrasy}    ${Values_KamenneZbozi}
    Press Keys    None    ENTER
    Wait Until Element Is Visible    ${Header_StartTrasy}
    Input Text    ${Inputs_CilTrasy}    ${Values_Brambory}
    Press Keys    None    ENTER

Post-conditions - TC030 - Základní plánování autem
    Wait Until Element Is Visible    ${Header_CilTrasy}
    Wait Until Element Is Visible    ${Button_DelkaTrasy1}

TC031 - Přepínání více variant tras
    Click Element    ${Button_DelkaTrasy1}
    Click Element    ${Button_DelkaTrasy2}
    Click Element    ${Button_DelkaTrasySipka}
    Wait Until Element Is Not Visible     ${Button_DelkaTrasy2}
    Click Element    ${Button_DelkaTrasySipka}

TC032 - Přepínání mezi možnostmi trasy Rychlá, Krátká, Rychlá s provozem
    Click Element    ${Button_MoznostiRychlostiTrasy}
    Click Element    ${ListItem_MoznostRychlostTrasy1}
    Wait Until Element Is Visible    ${Button_MoznostiRychlostiTrasy}
    Click Element    ${Button_MoznostiRychlostiTrasy}
    Click Element    ${ListItem_MoznostRychlostTrasy2}
    Wait Until Element Is Visible    ${Button_MoznostiRychlostiTrasy}
    Click Element    ${Button_MoznostiRychlostiTrasy}
    Click Element    ${ListItem_MoznostRychlostTrasy3}

TC033 - Možnost vyhnout se placeným úsekům
    Click Element    ${Button_VyhnoutSePlacenymUsekum}
    Checkbox Should Be Selected    ${Inputs_PlaceneUsekyCheckbox}

TC034 - Možnost plánování veřejnou dopravou
    Click Button    ${Button_PlanovaniVerejnaDoprava}
    Wait Until Element Is Visible    ${Panel_Spojeni}

TC035 - Nastavení plánování veřejnou dopravou
    Input Text    ${Inputs_DatumSpoje}     ${Values_DatumSpojePresne}
    Press Keys    None    ENTER
    Wait Until Element Is Visible    ${Header_DatumSpoje} 
    Element Should Contain    ${Header_DatumSpoje}    ${Values_DatumSpoje}

TC036 - Přepinání mezi předchozími a dalšími spojeními
    Click Element    ${Button_PredchoziSpojeni}
    Wait Until Element Is Visible  ${Header_DatumSpoje}
    Element Should Contain    ${Header_DatumSpoje}    ${Values_DatumSpojePredchozi}
    Click Element    ${Button_DalsiSpojeni}
    Wait Until Element Is Visible    ${Header_DatumSpoje}
    Click Element    ${Button_DalsiSpojeni}
    Wait Until Element Is Visible    ${Header_DatumSpoje}
    Element Should Contain    ${Header_DatumSpoje}    ${Values_DatumSpojeDalsi}

TC037 - Funkční odkaz na jednotlivé zastávky
    Click Element    ${Button_SpojZeStaniceKamenneZbozi}
    Wait Until Element Is Visible    ${Panel_SpojeOdsud}
    Element Should Be Visible    ${Header_SpojeOdsud}

Post-conditions - TC037 - Funkční odkaz na jednotlivé zastávky
    Click Element    ${Button_Zavrit}
    Click Element    ${Button_Autem}

TC038 - Změnit směr
    Click Element    ${Button_ZmenitSmer}
    Wait Until Element Is Visible    ${Panel_Planovani}
    Element Should Contain    ${Header_StartTrasyRelative}    ${Values_Brambory}
    Element Should Contain    ${Header_CilTrasyRelative}    ${Values_KamenneZbozi}

Post-condition - TC038 - Změnit směr
    Click Element    ${Button_ZrusitStartTrasy}
    Wait Until Element Is Visible    ${Button_ZrusitCilTrasy}
    Click Element    ${Button_ZrusitCilTrasy}

TC044 - Plánování lodí
    Input Text    ${Inputs_StartTrasy}    ${Values_Postrelmov}
    Press Keys    None    ENTER
    Wait Until Element Is Visible    ${Header_StartTrasyRelative}
    Input Text    ${Inputs_CilTrasy}    ${Values_LukaviceNaMorave}
    Press Keys    None    ENTER
    Click Element    ${Button_Lodi}

TC045 - Možnost rozkliknutí klíčových částí trasy lodí v sekci Co cestou uvidíte
    Wait Until Element Is Visible    ${Header_JezLukavice}
    Click Element    ${Header_JezLukavice}
    Wait Until Element Is Visible    ${Header_Sjizdeni}
    Element Should Be Visible    ${Header_Prenaseni}

Post-condtions - TC045 - Možnost rozkliknutí klíčových částí trasy lodí v sekci Co cestou uvidíte
    Click Element    ${Button_Zavrit}
    Click Element    ${Button_ZrusitStartTrasy}
    Wait Until Element Is Visible    ${Button_ZrusitCilTrasy}
    Click Element    ${Button_ZrusitCilTrasy}

TC047 - Zobrazení pole při naplánování nevalidní trasy
    Input Text    ${Inputs_StartTrasy}    ${Values_Mladcova}
    Press Keys    None    ENTER
    Wait Until Element Is Visible    ${Header_StartTrasyRelative}
    Input Text    ${Inputs_CilTrasy}    ${Values_Kocanda}
    Press Keys    None    ENTER
    Click Element    ${Button_Lodi}
    Wait Until Element Is Visible    ${Header_NevalidniTrasa}

Post-conditions - TS008_PlanovaniTrasy
    Close Browser
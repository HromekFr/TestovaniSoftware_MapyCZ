*** Variables ***
#TS001_VyhledavaciPole
${Button_Zavrit}  //button[contains(text(),'Zavřít')]
${Button_DeleteSearchInput}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/form[1]/span[1]
${Button_Restaurace}  //span[contains(text(),'Restaurace')]

#TS002_FormatyMapy
${Button_ZLetadla}  //span[contains(text(),'Z letadla')]
${Button_ZmenitMapu}  //span[text()='Změnit mapu']
${Button_VelkaDestnaVyhledavani}  //h3[contains(text(),'Velká Deštná (1115 m)')]

#TS004_UcetUzivatele
${Button_PrihlasitSe}  //button[contains(text(),'Přihlásit se')]
${Button_PravyPanelMoznost3}  //body[1]/div[1]/div[2]/div[1]/div[1]/button[3]
${Button_VytvoritSlozku}  //span[contains(text(),'Vytvořit složku')]
${Button_Trasa}  //span[contains(text(),'Trasa')]
${Button_UlozitTrasu}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/button[1]
${Button_VyberSlozky}  //body/div[2]/div[2]/div[2]
${Button_Ulozit}  //button[contains(text(),'Uložit')]
${Button_MojeMapy}  //span[contains(text(),'Moje mapy')]
${Button_NastaveniAdresyDomu}  //span[contains(text(),'Nastavit adresu domů')]
${Button_NastaveniAdresyDoPrace}  //span[contains(text(),'Nastavit adresu do práce')]
${Button_MoznostiSlozky}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/ul[1]/li[1]/div[1]/div[2]/span[2]
${Button_Smazat}  //button[contains(text(),'Smazat')]
${Button_UpravitAdresuDomu}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/span[1]/div[1]/a[2]
${Button_UpravitAdresuDoPrace}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/span[3]/div[1]/a[2]
${Button_UlozitSlozku}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[1]/div[5]/div[1]/div[1]/button[1]

#TS005_MoznostiSdileni
${Button_Sdilet}  //span[contains(text(),'Sdílet')]
${Button_KopirovatOdkaz}  //button[contains(text(),'Kopírovat odkaz')]
${Button_SdiletFacebook}  //body/div[2]/div[2]/div[2]/div[1]/a[1]
${Button_SdiletEmail}  //body/div[2]/div[2]/div[2]/div[1]/button[1]
${Button_OdeslatEmail}  //button[contains(text(),'Odeslat')]
${Button_SdiletQRKod}   //body/div[2]/div[2]/div[2]/div[1]/button[2]
${Button_VlozitMapuDoVlastnichStranek}  //span[contains(text(),'Vložit mapu do vlastních stránek')]
${Button_ZmenVelikostMapy}  //body/div[2]/div[2]/div[3]/div[1]/div[1]
${Button_ZmenNahledovaMapa}  //body/div[2]/div[2]/div[3]/div[2]/div[1]
${Button_ZrusitSdilet}  //body/div[2]/div[2]/button[1]
${Button_StahnoutPNG}  //button[contains(text(),'Stáhnout PNG')] 


#TS006_Nastroje
${Button_Nastroje}  //span[contains(text(),'Nástroje')]
${Button_Tisk}  //span[contains(text(),'Tisk')]
${Button_StahnoutJakoObrazek}  //span[contains(text(),'Stáhnout jako obrázek')]

#TS007_VyletPoOkoli
${Button_VyletPoOkoli}  //button[contains(text(),'Výlet po okolí')]
${Button_Pesi}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/button[1]
${Button_NaKole}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/button[2]
${Button_NaBezkach}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/button[3]
${Button_SliderDelkaTrasy}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/span[1]
${Button_CoCestouUvidite}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/ul[1]/li[1]/div[1]

#TS008_PlanovaniTrasy
${Button_DelkaTrasy1}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/h3[1]/span[2]
${Button_DelkaTrasy2}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/h3[2]/span[2]
${Button_DelkaTrasySipka}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/button[1]
${Button_MoznostiRychlostiTrasy}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]
${Button_VyhnoutSePlacenymUsekum}  //span[contains(text(),'Vyhnout se placeným úsekům')]
${Button_PlanovaniVerejnaDoprava}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/button[2]
${Button_PredchoziSpojeni}  //button[contains(text(),'Předchozí spojení')]
${Button_DalsiSpojeni}  //button[contains(text(),'Další spojení')]
${Button_SpojZeStaniceKamenneZbozi}  //a[contains(text(),'Kamenné Zboží')]
${Button_Autem}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/button[1]
${Button_ZmenitSmer}  //span[contains(text(),'Změnit směr')]
${Button_ZrusitStartTrasy}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[3]/button[1]
${Button_ZrusitCilTrasy}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[3]/button[1]
${Button_Lodi}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/button[6]

#TS009_DoplnkoveFunkce
${Button_NastaveniJazyka}  //body[1]/div[1]/div[2]/div[2]/div[2]/p[1]/div[1]/a[1]
${Button_PrihlaseniOdkaz}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/form[1]/div[2]/div[1]/div[3]/a[1]

#TS010_DalsiMoznostiPlanovani
${Button_Pocasi}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[3]/div[1]/div[1]
${Button_PocasiTeplota}  //span[contains(text(),'Teplota')]
${Button_PocasiSrazky}  //span[contains(text(),'Srážky')]
${Button_PocasiVitr}  //span[contains(text(),'Vítr')]
${Button_VyskovyProfil}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[3]/div[2]/div[1]
${Button_Itinerar}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]/div[3]/div[3]/div[1]

#TS011_FirmyARestaurace
${Button_RecenzeMoznosti}  //body[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[12]/div[2]/div[1]/span[1]
${Button_NahlasitProblem}  //button[contains(text(),'Nahlásit problém')]


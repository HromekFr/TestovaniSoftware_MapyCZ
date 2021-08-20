@REM python -m robot .\TS001_VyhledavaciPole.robot
@REM python -m robot .\TS002_FormatyMapy.robot
@REM python -m robot .\TS004_UcetUzivatele.robot
@REM python -m robot .\TS005_MoznostiSdileni.robot
@REM python -m robot .\TS006_Nastroje.robot
@REM python -m robot .\TS007_VyletPoOkoli.robot
@REM python -m robot .\TS008_PlanovaniTrasy.robot
@REM python -m robot .\TS009_DoplnkoveFunkce.robot
@REM python -m robot .\TS010_DalsiMoznostiPlanovani.robot
@REM python -m robot .\TS011_FirmyARestaurace.robot
robot -o "./Outputs/TS001_VyhledavaciPole - Output" -r "./Reports/TS001_VyhledavaciPole - Report" -l "./Logs/TS001_VyhledavaciPole - Log" "TS001_VyhledavaciPole.robot" &
robot -o "./Outputs/TS002_FormatyMapy - Output" -r "./Reports/TS002_FormatyMapy - Report" -l "./Logs/TS002_FormatyMapy - Log" "TS002_FormatyMapy.robot" &
robot -o "./Outputs/TS004_UcetUzivatele - Output" -r "./Reports/TS004_UcetUzivatele - Report" -l "./Logs/TS004_UcetUzivatele - Log" "TS004_UcetUzivatele.robot" &
robot -o "./Outputs/TS005_MoznostiSdileni - Output" -r "./Reports/TS005_MoznostiSdileni - Report" -l "./Logs/TS005_MoznostiSdileni - Log" "TS005_MoznostiSdileni.robot" &
robot -o "./Outputs/TS006_Nastroje - Output" -r "./Reports/TS006_Nastroje - Report" -l "./Logs/TS006_Nastroje - Log" "TS006_Nastroje.robot" &
robot -o "./Outputs/TS007_VyletPoOkoli - Output" -r "./Reports/TS007_VyletPoOkoli - Report" -l "./Logs/TS007_VyletPoOkoli - Log" "TS007_VyletPoOkoli.robot" &
robot -o "./Outputs/TS008_PlanovaniTrasy - Output" -r "./Reports/TS008_PlanovaniTrasy - Report" -l "./Logs/TS008_PlanovaniTrasy - Log" "TS008_PlanovaniTrasy.robot" &
robot -o "./Outputs/TS009_DoplnkoveFunkce - Output" -r "./Reports/TS009_DoplnkoveFunkce - Report" -l "./Logs/TS009_DoplnkoveFunkce - Log" "TS009_DoplnkoveFunkce.robot" &
robot -o "./Outputs/TS010_DalsiMoznostiPlanovani - Output" -r "./Reports/TS010_DalsiMoznostiPlanovani - Report" -l "./Logs/TS010_DalsiMoznostiPlanovani - Log" "TS010_DalsiMoznostiPlanovani.robot" &
robot -o "./Outputs/TS011_FirmyARestaurace - Output" -r "./Reports/TS011_FirmyARestaurace - Report" -l "./Logs/TS011_FirmyARestaurace - Log" "TS011_FirmyARestaurace.robot" &
pause


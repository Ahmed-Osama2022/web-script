:: --------------------- Script Description ---------------------
:: webProject.bat
:: This is a batch script for creating a standard tree structure for a WEB project
:: Only works for windows machine
:: --------------------- End Description ---------------------

:: At first let's create the main HTML file
:: And README.md file
echo Creating the main HTML file...
echo.
echo Creating README file...

type nul > index.html
type nul > README.md

timeout 1
:: --------------------------------------

:: Then let's create the folders 
echo.
echo Creating the folders...

md images,css,js

timeout 1
:: --------------------------------------

:: Creating the files for js and css 
echo.
echo Creating the files...

type nul > .\css\styles.css
type nul > .\js\main.js

timeout 1
:: --------------------------------------
:: Let's open the project in the browser
echo.
echo Opining the browser... 
:: Let's store the working directory!
:: NOTE: wd is short for "Working Directoy" 
set wd=%cd%

echo Starting Google Chrome browswer for the project...
start /b chrome.exe file:///%wd%/index.html

timeout 3
:: --------------------------------------

:: Finally opining IDE for the project
echo.
echo Starting VScode...

start /b code .
timeout 3

:: Removing the script from the tree structure
echo .
echo Removing the script from the tree structure...

del *.bat

:: --------------------------------------
:: End of script
timeout 5 
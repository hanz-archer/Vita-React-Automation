@echo off
:: Prompt for project name
set /p projectName=Enter the project name: 

:: Prompt for Vite project name
set /p viteName=Enter the Vite project name: 

:: Create root folder and subfolders
mkdir %projectName%
cd %projectName%
mkdir backend frontend

:: Navigate to the frontend folder and create the Vite project
cd frontend
echo "Creating Vite project. Please follow the prompts to select React and JavaScript."
npm create vite@latest %viteName%
echo "Press any key to continue after the Vite project creation is complete..."
pause

:: Move into the Vite project directory
cd %viteName%

:: Install dependencies
npm install

:: Create directory structure under src
mkdir src\components src\pages src\utils

:: Create subfolders under components, pages, and utils
mkdir src\components\common src\components\layouts
mkdir src\pages\login src\pages\signup src\pages\home
mkdir src\utils\hooks src\utils\services

:: Create placeholder .jsx files in the subfolders with 'rafce' template
echo "rafce" > src\pages\login\login.jsx
echo "rafce" > src\pages\signup\signup.jsx
echo "rafce" > src\pages\home\home.jsx
echo "rafce" > src\components\common\placeholder.jsx
echo "rafce" > src\components\layouts\placeholder.jsx
echo "rafce" > src\utils\hooks\placeholder.js
echo "rafce" > src\utils\services\placeholder.js

:: Tailwind Setup
:: Install Tailwind CSS
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p

:: Configure tailwind.config.js
echo Configuring Tailwind...
(for /f "delims=" %%i in ('findstr "content" tailwind.config.js') do set "configLine=%%i")
if defined configLine (
    echo.> temp_config.js
    for /f "delims=" %%i in ('type tailwind.config.js') do (
        echo %%i>> temp_config.js
        if /i "%%i"=="%configLine%" (
            echo     "./index.html",>> temp_config.js
            echo     "./src/**/*.{js,ts,jsx,tsx}",>> temp_config.js
        )
    )
    move /y temp_config.js tailwind.config.js
)

:: Update index.css with Tailwind directives
echo @tailwind base;> src\index.css
echo @tailwind components;>> src\index.css
echo @tailwind utilities;>> src\index.css

:: Notify user of completion
echo Setup completed for %projectName%! Tailwind is also configured.

:: Pause to keep the command window open
pause

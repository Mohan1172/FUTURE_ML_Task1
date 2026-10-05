@echo off
setlocal
cd /d "%~dp0"

echo ========================================
echo FUTURE_ML_Task1 - Sales Forecasting
echo ========================================

echo.
echo [1/3] Creating virtual environment if needed...
if not exist ".venv\Scripts\python.exe" (
    py -m venv .venv
    if errorlevel 1 (
        echo Could not create the virtual environment.
        echo Make sure Python 3.10+ is installed and added to PATH.
        pause
        exit /b 1
    )
)

echo [2/3] Installing required packages...
.venv\Scripts\python.exe -m pip install -r requirements.txt
if errorlevel 1 (
    echo.
    echo Package installation failed. Check your internet connection and try again.
    pause
    exit /b 1
)

echo [3/3] Running the forecasting project...
.venv\Scripts\python.exe src\forecast_sales.py
if errorlevel 1 (
    echo.
    echo The project stopped because of an error. Read the message above.
    pause
    exit /b 1
)

echo.
echo ========================================
echo Project completed successfully.
echo Check the outputs folder for forecasts and charts.
echo ========================================
pause

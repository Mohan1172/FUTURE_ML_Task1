# Run FUTURE_ML_Task1 in VS Code

## 1. Install Python
Install Python 3.10 or newer. During installation on Windows, enable **Add Python to PATH**.

## 2. Open the project correctly
In VS Code choose **File > Open Folder** and select the folder:

`FUTURE_ML_Task1`

You should see `data`, `notebooks`, `outputs`, `src`, `requirements.txt`, and `README.md` in the Explorer.

## 3. Open the VS Code terminal
Use **Terminal > New Terminal**.

## 4. Create the virtual environment
Windows PowerShell:

```powershell
py -m venv .venv
```

## 5. Activate it
PowerShell:

```powershell
.\.venv\Scripts\Activate.ps1
```

Command Prompt:

```cmd
.venv\Scripts\activate
```

If PowerShell blocks activation, you can skip activation and use `.venv\Scripts\python.exe` directly.

## 6. Install packages

```powershell
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
```

## 7. Run the project

```powershell
python src\forecast_sales.py
```

Successful execution ends with messages showing the selected model and the 30-day forecast file.

## 8. View the results
Open the `outputs` folder. You will find:

- `sales_forecast_30_days.csv` — future 30-day forecast
- `model_comparison.csv` — MAE, RMSE and MAPE comparison
- `sales_forecast.png` — historical sales + forecast
- `model_comparison.png` — model error comparison
- `category_revenue.png` — category revenue chart
- `feature_importance.png` — important forecasting features

## 9. Run the notebook
Install the VS Code **Jupyter** extension if it is not already installed.

Open:

`notebooks/FUTURE_ML_Task1_Sales_Forecasting.ipynb`

Select the `.venv` Python interpreter as the kernel and run the cells from top to bottom.

## One-click option
On Windows, double-click `run_project.bat`. It creates the environment, installs the packages, and runs the project.

## Common problem
If `ModuleNotFoundError: No module named 'pandas'` appears, VS Code is using a different Python interpreter. Select:

**Ctrl + Shift + P → Python: Select Interpreter → .venv\Scripts\python.exe**

Then run the script again.

# Power BI Dashboard Guide

The task recommends Power BI/Tableau/Matplotlib for business-friendly presentation. This repository already contains the forecast and summary CSVs needed for a Power BI dashboard.

## Files to import

- `data/historical_sales.csv` — historical business data
- `outputs/sales_forecast_30_days.csv` — future predictions
- `outputs/model_comparison.csv` — evaluation metrics
- `outputs/category_summary.csv` — category performance
- `outputs/region_summary.csv` — regional performance

## Suggested dashboard layout

### KPI cards

1. Historical Revenue
2. Average Daily Revenue
3. 30-Day Forecast Revenue
4. Forecast vs Previous 30-Day Average
5. Best Historical Category

### Main visuals

- **Line chart:** Date vs Sales, with Forecast_Sales after the historical period.
- **Column chart:** Revenue by Product Category.
- **Bar chart:** Revenue by Region.
- **Column chart:** RMSE by Model.
- **Table:** Forecast Date, Forecast Sales.

### Useful slicers

- Product Category
- Region
- Date / Year / Month

## Power BI measures

```DAX
Historical Revenue = SUM(HistoricalSales[Sales])

Forecast Revenue = SUM(Forecast[Forecast_Sales])

Average Daily Sales = AVERAGE(HistoricalSales[Sales])

Forecast Average Daily Sales = AVERAGE(Forecast[Forecast_Sales])
```

## Business story

Use the dashboard to answer:

- Is sales demand increasing or decreasing?
- Which categories and regions contribute the most revenue?
- What is the expected revenue over the next 30 days?
- How accurate is the forecasting model?
- Where should inventory, staffing, and marketing planning receive attention?

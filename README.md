# Flight_Data-Analysis
An end-to-end data pipeline built using Amazon AWS.

<img width="1230" alt="Screenshot 2023-09-25 at 4 08 02 PM" src="https://github.com/NitinPrasad5/Flight_Data-Analysis/assets/93488094/4fd44a57-2464-409f-b098-bddf0836c64e">

## About the project.

This project implements a data pipeline using Amazon Web Services (AWS) to process and analyze a Flight Dataset. The pipeline collects raw data, processes it, stores the processed data in a data warehouse, and performs analysis using SQL queries. The analysis results are visualized dynamically using Power BI dashboards.

## Project Components

### 1. Data Pipeline

The data pipeline consists of several stages:

- **Data Collection**: Raw flight data is retrieved from an S3 bucket (`my-flights-raw-data`) using AWS S3 client.
- **Data Processing**: The data undergoes cleaning and transformation:
  - Unwanted columns are dropped.
  - Airport details (city, state) are extracted from the `airport_name` field.
  - Carrier and airport tables are created with unique IDs for efficient querying.
  - Date information is structured to facilitate time-series analysis.
- **Data Storage**: Processed data (flights, carriers, airports, dates) is converted to CSV format and uploaded to an S3 bucket (`my-flights-processed-data`).

### 2. Data Warehouse

- **Storage**: AWS S3 is used as a data warehouse for storing the processed data tables (`flights.csv`, `carriers.csv`, `airports.csv`, `dates.csv`).

### 3. Analysis

- **SQL Analysis**: The processed data is queried using SQL to derive insights such as:
  - Total number of flights and delays.
  - Delay reasons (carrier delay, weather delay, etc.).
  - Airport-wise and carrier-wise performance metrics.
  
### 4. Visualization

- **Power BI Dashboard**: The analysis results are visualized dynamically using Power BI:
  - Dashboards are created to visualize trends, patterns, and key metrics derived from the SQL analysis.
  - Interactive visualizations allow users to explore flight performance data across different dimensions (time, carrier, airport).



# Motor-theft-Analysis-SQL
This project is focused on analyzing stolen vehicle data to identify trends and patterns using SQL

# Stolen Vehicles Analysis Project

## Project Overview

This project involves the creation and analysis of a database named `create_stolen_vehicles`. The project is divided into three main objectives, each focusing on different aspects of stolen vehicle data. The SQL database is used to clean and process the data, which is then transferred to Excel for detailed visualization.

## Project Objectives

- **Objective 1**: Analyze the most common makes and models of stolen vehicles.
- **Objective 2**: Determine the timing patterns of vehicle thefts.
- **Objective 3**: Explore geographical trends in vehicle thefts.

## Technologies Used

- **SQL**: For database management and data cleaning.
- **Microsoft Excel**: For data visualization and analysis.

## Repository Structure

- `create_stolen_vehicles_db.sql`: SQL script for creating the database schema.
- `Objective 1.sql`: SQL script for the first analysis objective.
- `Objective 1 Output.csv`: Output file from Objective 1 analysis.
- `Objective 2.sql`: SQL script for the second analysis objective.
- `Objective 2 Output.xlsx`: Excel file containing the results from Objective 2.
- `Objective 3.sql`: SQL script for the third analysis objective.
- `Objective 3 Output.xlsx`: Excel file containing the results from Objective 3.

## Setup and Running the Project

1. **Database Setup**:
   - Run the `create_stolen_vehicles_db.sql` script in your SQL server to set up the database.

2. **Running Analysis Scripts**:
   - Execute each `.sql` file corresponding to the objectives to populate the database with analyzed data.

3. **Viewing Results**:
   - Open the corresponding Excel files to view visualizations and further analysis of the data processed by the SQL scripts.

## Data Cleaning and Preparation

Data cleaning is performed within each SQL script, ensuring that the data is accurate and suitable for analysis. The scripts include steps to remove duplicates, handle missing values, and correct anomalies before transferring data to Excel for visualization.

## Visualization

Visualizations are created in Excel, utilizing the cleaned data from the SQL scripts. These visualizations are tailored to highlight trends and insights specific to each objective, providing a clear visual representation of the findings.

## Project Objectives
1. **Timing Analysis**: Determine the most common times for vehicle thefts, including annual, monthly, and weekly trends.
2. **Vulnerability Assessment**: Identify vehicle characteristics most associated with theft such as type, age, and color.
3. **Location Insights**: Analyze regional data to understand where vehicle thefts are most prevalent and the correlation with population density.

## Analysis Results

### Timing Analysis of Vehicle Thefts
- **Yearly Trends**: Increase in theft incidents from 2021 to 2022.
- **Monthly Patterns**: Peak in March 2022 with 1,053 vehicles stolen.
- **Weekly Trends**: Highest thefts on Tuesdays, lowest on Saturdays.

### Vehicle Vulnerability Analysis
- **Most Stolen Vehicle Types**: Station wagons, saloons, and hatchbacks.
- **Average Age of Stolen Vehicles**: Newer models like 'Mobile Machines' average 4 years old, indicating a preference for newer vehicles.

### Luxury Vehicle Theft Analysis
- **Findings**: Convertibles, sports cars, and heavy vans have higher luxury theft rates.

### Vehicle Theft Trends by Type and Color
- **Most Common Thefts**: Silver and white vehicles top the theft chart across vehicle types.

### Geographic Analysis of Vehicle Thefts
- **Vehicle Thefts vs. Regional Demographics**: Auckland shows the highest thefts and density.
- **Density's Effect on Vehicle Theft**: Different trends observed in high-density vs. low-density areas.

## Methodology
The approach involved systematic data collection, SQL-based analysis for pattern identification, and cross-referencing theft data with demographic statistics.

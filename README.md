# Air Traffic Analysis 2025/2026


## Summary

-For this exercise, an analysis was created using over 125,000 real-world flight records from airports, with data extracted from "https://www.kaggle.com/datasets/nilesh2042/airport-traffic-dataset".

-The Anaconda Navigator environment was used, employing Jupyter to work within an .ipynb notebook.

-Pandas in Python was used for data cleaning and exploratory analysis.

-A database was created and a schema designed in MySQL.

-Subsequently, benchmark queries were executed to compare the data with that displayed in the Power BI executive dashboard.

-Docker was used to create a container to host the database and store the data extracted from ipynb.

-Next, an executive dashboard was created in Power BI using the database data to evaluate the information collected from the CSV files of the aforementioned data set, which allowed for trend analysis and data comparison for 2025/2026.

## Findings
- As a first finding, there are more than 330 airports belonging to Europe in the extracted dataset.

- As a second finding, Istanbul (LTFM) is the airport with the highest traffic in 2025, with more than 40,000 flights.

- As a third finding, Turkey, Spain, and Germany are the three countries with the most registered flights.

- As a fourth finding, there were fewer registered flights in January 2026 than in January 2025.


## Tech Stack

- The environment used was Anaconda Navigator, where Jupyter was used to work on a notebook.

- The pandas library in Python was used to clean the data extracted from the dataset, which consisted of two CSV files. All the data was processed with these technologies to create a single, clean CSV file.

- MySQL was used as the database for storing the previously processed data. Additionally, some KPI queries were performed to serve as a reference point after the executive dashboard was created.

- Docker was used to create a container to host the database.

- Finally, Power BI was used to create an executive dashboard that presented the results of the practical exercise.
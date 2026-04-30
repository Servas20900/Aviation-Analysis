# Air Traffic Analysis 2025/2026


## Summary
- Over 125,000 real flight records at airports, primarily in Europe, were analyzed as a personal project to apply my knowledge.

- Python and pandas were used for data cleaning and exploratory analysis.

- A database was created and a schema designed in MySQL. Reference queries were then executed to compare the data with the data displayed in a Power BI view.

- Docker was used to create a container for the database, storing the data extracted from IPNYB.

- An executive dashboard was then created in Power BI using the database data to evaluate the collected data, enabling trend analysis and data comparison for 2025/2026.

## Findings
- As a first finding, there are more than 330 airports belonging to Europe in the extracted dataset.

- As a second finding, Istanbul (LTFM) is the airport with the highest traffic in 2025, with more than 40,000 flights.

- As a third finding, Turkey, Spain, and Germany are the three countries with the most registered flights.

- As a fourth finding, there were fewer registered flights in January 2026 than in January 2025.


## Tech Stack

- The pandas library in Python was used to clean the data extracted from the dataset, which consisted of two CSV files. All the data was processed with these technologies to create a single, clean CSV file.

- MySQL was used as the database for storing the previously processed data. Additionally, some KPI queries were performed to serve as a reference point after the executive dashboard was created.

- Docker was used to create a container to host the database.

- Finally, Power BI was used to create an executive dashboard that presented the results of the practical exercise.
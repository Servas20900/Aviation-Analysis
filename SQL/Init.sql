CREATE DATABASE IF NOT EXISTS aviation_db;
USE aviation_db;

CREATE TABLE IF NOT EXISTS flights (
    id INT AUTO_INCREMENT PRIMARY KEY,
    apt_icao VARCHAR(10),
    apt_name VARCHAR(200),
    state_name VARCHAR(100),
    flt_date DATE,
    flt_dep INT,
    flt_arr INT,
    flt_tot INT,
    year_num INT,
    month_num INT,
    month_name VARCHAR(20),
    day_of_week VARCHAR(20)
);
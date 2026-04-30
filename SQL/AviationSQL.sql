USE aviation_db;

--Top 20 aeropuertos por tráfico total 2025
SELECT apt_name, state_name,
       SUM(flt_tot) AS total_movements,
       SUM(flt_dep) AS total_departures,
       SUM(flt_arr) AS total_arrivals
FROM flights
WHERE year_num = 2025
GROUP BY apt_name, state_name
ORDER BY total_movements DESC
LIMIT 20;

-- Tráfico mensual 2025 (estacionalidad)
SELECT month_num, month_name,
       SUM(flt_tot) AS total_movements
FROM flights
WHERE year_num = 2025
GROUP BY month_num, month_name
ORDER BY month_num;

--Top 15 países por tráfico 2025
SELECT state_name,
       SUM(flt_tot) AS total_movements
FROM flights
WHERE year_num = 2025
GROUP BY state_name
ORDER BY total_movements DESC
LIMIT 15;

-- Comparación enero 2025 vs enero 2026
SELECT year_num,
       SUM(flt_tot) AS total_movements,
       SUM(flt_dep) AS departures,
       SUM(flt_arr) AS arrivals
FROM flights
WHERE month_num = 1
GROUP BY year_num;

-- Aeropuertos con mayor crecimiento enero 25 vs 26
SELECT a.apt_name, a.state_name,
       a.tot_2025, b.tot_2026,
       ROUND(((b.tot_2026 - a.tot_2025) / a.tot_2025) * 100, 1) AS growth_pct
FROM (
    SELECT apt_name, state_name, SUM(flt_tot) AS tot_2025
    FROM flights WHERE year_num=2025 AND month_num=1
    GROUP BY apt_name, state_name
) a
JOIN (
    SELECT apt_name, SUM(flt_tot) AS tot_2026
    FROM flights WHERE year_num=2026 AND month_num=1
    GROUP BY apt_name
) b ON a.apt_name = b.apt_name
ORDER BY growth_pct DESC
LIMIT 20;

-- Tráfico por día de la semana
SELECT day_of_week,
       ROUND(AVG(flt_tot)) AS avg_daily_movements
FROM flights
WHERE year_num = 2025
GROUP BY day_of_week
ORDER BY avg_daily_movements DESC;

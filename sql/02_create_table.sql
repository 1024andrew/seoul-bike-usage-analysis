USE bike_analysis_db;

DROP TABLE IF EXISTS bike_hourly_usage;

CREATE TABLE bike_hourly_usage (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rental_date DATE,
    rental_hour INT,
    station_id INT,
    station_name VARCHAR(255),
    rental_type VARCHAR(50),
    gender VARCHAR(20),
    age_group VARCHAR(50),
    usage_count INT,
    exercise_amount VARCHAR(50),
    carbon_amount VARCHAR(50),
    distance_m INT
);
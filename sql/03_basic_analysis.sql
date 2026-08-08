1. 전체 데이터 수 확인
SELECT COUNT(*) AS total_rows
FROM bike_analysis_db.bike_hourly_usage;

2. 총 이용건수 확인
SELECT SUM(usage_count) AS total_usage
FROM bike_analysis_db.bike_hourly_usage;

3. 시간대별 이용건수
SELECT
    rental_hour,
    SUM(usage_count) AS total_usage
FROM bike_analysis_db.bike_hourly_usage
GROUP BY rental_hour
ORDER BY rental_hour;

4. 이용량 많은 시간대 TOP 5
SELECT
    rental_hour,
    SUM(usage_count) AS total_usage
FROM bike_analysis_db.bike_hourly_usage
GROUP BY rental_hour
ORDER BY total_usage DESC
LIMIT 5;

5. 대여소별 이용건수 TOP 10
SELECT
    station_id,
    station_name,
    SUM(usage_count) AS total_usage
FROM bike_analysis_db.bike_hourly_usage
GROUP BY station_id, station_name
ORDER BY total_usage DESC
LIMIT 10;

6. 연령대별 이용건수
SELECT
    age_group,
    SUM(usage_count) AS total_usage
FROM bike_analysis_db.bike_hourly_usage
GROUP BY age_group
ORDER BY total_usage DESC;

7. 성별 이용건수
SELECT
    gender,
    SUM(usage_count) AS total_usage
FROM bike_analysis_db.bike_hourly_usage
GROUP BY gender
ORDER BY total_usage DESC;


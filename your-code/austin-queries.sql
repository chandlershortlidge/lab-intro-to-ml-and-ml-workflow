USE weather_data;


select count(*) from austin_weather;

SELECT TempHighF, Date FROM austin_weather
ORDER BY TempHighF desc
LIMIT 1;

select round(avg(HumidityAvgPercent), 2) as "Avg Humidity"
from austin_weather;

-- d) Top 10 days, where SeaLevelPressureAvgInches is the highest, knowing DewPointAvgF is higher than 28 ?

SELECT SeaLevelPressureAvgInches as "Sea Level Pressure Avg", DewPointAvgF "Avg Dew Point" from austin_weather
where DewPointAvgF > 28
order by SeaLevelPressureAvgInches desc
limit 10;
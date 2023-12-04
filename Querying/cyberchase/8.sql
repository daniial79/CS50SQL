SELECT COUNT("id") FROM "episodes"
WHERE STRFTIME('%Y', "air_date") BETWEEN '2018' AND '2023';
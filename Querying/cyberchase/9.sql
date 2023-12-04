SELECT COUNT("id") FROM "episodes"
WHERE STRFTIME('%Y', "air_date") BETWEEN '2002' AND '2007';
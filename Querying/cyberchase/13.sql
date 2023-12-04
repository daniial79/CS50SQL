SELECT "id", "production_code" FROM "episodes"
WHERE STRFTIME('%Y', "air_date") = '2015' AND "title" LIKE '%fraction%';
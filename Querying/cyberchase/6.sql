SELECT "title" FROM "episodes"
WHERE "season" = 6 AND STRFTIME('%Y', "air_date") = '2007';
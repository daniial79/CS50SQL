SELECT "id" AS 'identifier' FROM "players"
WHERE STRFTIME('%Y', "final_game") = '2022'
ORDER BY "first_name", "last_name";
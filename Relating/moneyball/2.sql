SELECT "year", "salary" FROM "salaries"
WHERE "salaries"."player_id" = (
    SELECT "id" FROM "players"
    WHERE "first_name" = 'Cal' AND "last_name" = 'Ripken'
)
ORDER BY "year" DESC;
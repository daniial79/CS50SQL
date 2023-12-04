SELECT
    "players"."first_name",
    "players"."last_name"
FROM
    "salaries"
    INNER JOIN "players" ON "players"."id" = "salaries"."player_id"
ORDER BY
    "salaries"."salary" DESC LIMIT 1;
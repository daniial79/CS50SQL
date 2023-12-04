SELECT
    "players"."first_name",
    "players"."last_name",
    "salaries"."salary" / "performances"."H" AS 'dollars per hit'
FROM
    "players"
    INNER JOIN "performances" ON "performances"."player_id" = "players"."id"
    INNER JOIN "salaries" ON "salaries"."player_id" = "players"."id"
    AND "salaries"."year" = 2001
    AND "performances"."year" = 2001
WHERE
    "performances"."H" <> 0
ORDER BY
    "dollars per hit" ASC,
    "players"."first_name",
    "players"."last_name"
LIMIT 10;

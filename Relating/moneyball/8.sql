SELECT
    "salaries"."salary"
FROM
    "salaries"
    INNER JOIN "players" ON "players"."id" = "salaries"."player_id"
    INNER JOIN "performances" ON "performances"."player_id" = "players"."id"
WHERE
    "performances"."year" = 2001 AND
    "salaries"."year" = 2001
ORDER BY
    "performances"."HR" DESC LIMIT 1;


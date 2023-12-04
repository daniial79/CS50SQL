SELECT
    "districts"."name",
    "expenditures"."pupils"
FROM
    "districts"
    INNER JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
WHERE
    "expenditures"."pupils" > (
        SELECT
            AVG("expenditures"."pupils")
        FROM
            "expenditures"
    )
ORDER BY "expenditures"."pupils" DESC;
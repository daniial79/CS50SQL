SELECT "name" FROM "districts"
INNER JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
ORDER BY "pupils" ASC LIMIT 1;
CREATE VIEW "june_vacancies" AS
SELECT "listings"."id", "property_type", "host_name", COUNT("availabilities"."id") AS "days_vacant" FROM "listings"
INNER JOIN "availabilities" ON "availabilities"."listing_id" = "listings"."id"
GROUP BY "availabilities"."listing_id"
HAVING ("date" >= '2023-05-01' AND "date" < '2023-07-01') AND "available" = "TRUE";


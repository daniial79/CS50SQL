CREATE VIEW "frequently_reviewed" AS
SELECT "listings"."id", "property_type", "host_name", COUNT("reviews"."id") AS "reviews" FROM "listings"
INNER JOIN "reviews" ON "reviews"."listing_id" = "listings"."id"
GROUP BY "reviews"."listing_id"
ORDER BY "reviews" DESC LIMIT 100;

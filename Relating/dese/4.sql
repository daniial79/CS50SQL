SELECT
    COUNT("name") AS 'Public schools',
    "city"
FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city"
ORDER BY COUNT("id") DESC, "city" LIMIT 10;
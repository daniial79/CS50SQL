
-- *** The Lost Letter ***
-- find the to_address_id using packages content
SELECT * FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" ='900 Somerville Avenue'
);
    -- id => 384
    -- content => Congratulatory letter
    -- to_address_id => 854

-- find destionation data
SELECT * FROM "addresses" WHERE "id" = 854;
    -- type => residential
    -- address => 2 Finnigan Street


-- *** The Devious Delivery ***
-- extract the data from package table where from_address_id is null
SELECT * FROM "packages" WHERE "from_address_id" IS NULL;
    -- id => 5098
    -- contents => Duck debugger
    -- to_address_id => 50

-- find destination type
SELECT "type" FROM "addresses" WHERE "id" = (
    SELECT "to_address_id" FROM "packages" WHERE "from_address_id" IS NULL
);


-- *** The Forgotten Gift ***
-- finding content of forgotten gift base on source and destination addresses
SELECT * FROM "packages"
WHERE "from_address_id" = (
    SELECT "id" FROM "addresses"
    WHERE "address" = '109 Tileston Street'
) AND "to_address_id" = (
    SELECT "id" FROM "addresses"
    WHERE "address" = '728 Maple Place'
);
    -- id => 9523
    -- contents => Flowers

-- finding package
SELECT * FROM "scans"
WHERE "package_id" = (
    SELECT "id" FROM "packages"
    WHERE "from_address_id" = (
        SELECT "id" FROM "addresses"
        WHERE "address" = '109 Tileston Street'
    ) AND "to_address_id" = (
        SELECT "id" FROM "addresses"
        WHERE "address" = '728 Maple Place'
    )
);
    -- dropped at address_id 7432 and driver with id 17 has picked it up there.

SELECT "name" FROM "drivers"
WHERE "id" = (
SELECT "driver_id" FROM "scans"
    WHERE "package_id" = (
        SELECT "id" FROM "packages"
        WHERE "from_address_id" = (
            SELECT "id" FROM "addresses"
            WHERE "address" = '109 Tileston Street'
        ) AND "to_address_id" = (
            SELECT "id" FROM "addresses"
            WHERE "address" = '728 Maple Place'
        )
    ) AND "action" = "Pick"
    ORDER BY "timestamp" DESC LIMIT 1
);

CREATE TABLE "passengers"(
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" SMALLINT NOT NULL,

    PRIMARY KEY("id")
);

CREATE TABLE "airlines" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "concousre" TEXT NOT NULL CHECK("concousre" IN ('A', 'B', 'C', 'D', 'E', 'F', 'T')),

    PRIMARY KEY("id")
);

CREATE TABLE "flights" (
    "id" INTEGER,
    "flight_number" INTEGER NOT NULL,
    "airline_id" INTEGER,
    "origin_airport_code" TEXT NOT NULL,
    "dest_airport_code" TEXT NOT NULL,
    "deprature_date" DATETIME NOT NULL,
    "arrival_date" DATETIME NOT NULL,

    PRIMARY KEY("id"),
    FOREIGN KEY("airline_id") REFERENCES "airlines"("id")
);

CREATE TABLE "checkIns" (
    "id" INTEGER,
    "checkin_time" DATETIME NOT NULL,
    "flight_id" INTEGER,

    PRIMARY KEY("id"),
    FOREIGN KEY("flight_id") REFERENCES "flights"("id")
);


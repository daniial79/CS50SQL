CREATE TABLE "ingredients" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "pay_per_unit" DECIMAL(5, 2) NOT NULL,

    PRIMARY KEY("id")

);

CREATE TABLE "donuts" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "is_glutenfree" SMALLINT CHECK("is_flutenfree" IN (0, 1)),

    PRIMARY KEY("id")

);

CREATE TABLE "orders" (
    "id" INTEGER,
    "donut_id" INTEGER,
    "customer_id" INTEGER,

    PRIMARY KEY("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE "customers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "history_id" INTEGER,

    PRIMARY KEY("id"),
    FOREIGN KEY("history_id") REFERENCES "histories"("id")

);

CREATE TABLE "histories" (
    "id" INTEGER,
    "customer_id" INTEGER,
    "order_id" INTEGER,

    PRIMARY KEY("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id"),
    FOREIGN KEY("order_id") REFERENCES "orders"("id")
);
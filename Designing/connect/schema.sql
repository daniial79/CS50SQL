CREATE TABLE "users" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL,

    PRIMARY KEY("id")

);

CREATE TABLE "schools" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "type" TEXT NOT NULL CHECK("type" IN ('Elementary School', 'Middle School', 'High School', 'Lower School', 'Upper School', 'College', 'University')),
    "location" TEXT NOT NULL,
    "foundation_year" TEXT NOT NULL,

    PRIMARY KEY("id")
);

CREATE TABLE "companies" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "field" TEXT NOT NULL,
    "location" TEXT NOT NULL,

    PRIMARY KEY("id")
);

CREATE TABLE "people_connections" (
    "id" INTEGER,
    "firstend_id" INTEGER,
    "secondend_id" INTEGER,

    PRIMARY KEY("id"),
    FOREIGN KEY("firstend_id") REFERENCES "users"("id"),
    FOREIGN KEY("secondend_id") REFERENCES "users"("id")
);

CREATE TABLE "school_connections" (
    "id" INTEGER,
    "student_id" INTEGER,
    "school_id" INTEGER,
    "start_date" DATE NOT NULL,
    "end_date" DATE,

    PRIMARY KEY ("id"),
    FOREIGN KEY("student_id") REFERENCES "users"("id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("id")
);

CREATE TABLE "companies_connections" (
    "id" INTEGER,
    "employee_id" INTEGER,
    "company_id" INTEGER,
    "start_date" DATE NOT NULL,
    "end_date" DATE,

    PRIMARY KEY("id"),
    FOREIGN KEY("employee_id") REFERENCES "users"("id"),
    FOREIGN KEY("company_id") REFERENCES "companies"("id")
);
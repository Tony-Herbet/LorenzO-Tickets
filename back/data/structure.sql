-- SQLBook: Code
-- Active: 1664888159294@@127.0.0.1@5432@lorenzo_tickets
BEGIN;

DROP TABLE IF EXISTS 
"ticket",
"client",
"message",
"employee",
"ticket_employee";

DROP TYPE IF EXISTS "ticket_status", "employee_role";

CREATE TYPE ticket_status AS ENUM ('open', 'closed', 'underway');
CREATE TYPE employee_role AS ENUM ('intervenor', 'lead', 'admin');


CREATE TABLE "ticket" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "title" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "status" ticket_status NOT NULL DEFAULT 'open',
    "client_id" INT NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

CREATe TABLE "client" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "email" TEXT NOT NULL,
    "company" TEXT NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "message" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "content" TEXT NOT NULL,
    "ticket_id" INT NOT NULL,
    "client_id" INT,
    "employee_id" INT,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "employee" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "firstname" TEXT NOT NULL,
    "lastname" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "role" employee_role NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "ticket_employee" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "ticket_id" INT NOT NULL REFERENCES "ticket" ("id") ON DELETE CASCADE,
    "employee_id" INT NOT NULL REFERENCES "employee" ("id") ON DELETE CASCADE,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    UNIQUE("ticket_id", "employee_id")
);

COMMIT;

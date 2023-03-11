-- Deploy dashboard_ads:2023-11-03_company-table to pg

BEGIN;

CREATE TABLE IF NOT EXISTS main.company (
  id            TEXT NOT NULL PRIMARY KEY,
  user_id       TEXT NOT NULL,
  company_name  TEXT NOT NULL,
  company_img   JSONB
);

CREATE INDEX IF NOT EXISTS idx_company_name ON main.company (company_name);

COMMIT;

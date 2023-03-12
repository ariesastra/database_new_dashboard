-- Deploy dashboard_ads:2023-11-03_company-table to pg

BEGIN;

CREATE TABLE IF NOT EXISTS main.company (
  id            TEXT NOT NULL PRIMARY KEY,
  user_id       TEXT NOT NULL,
  company_name  TEXT NOT NULL,
  company_img   JSONB,
  created_at        TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  created_by        TEXT NOT NULL DEFAULT 'system',
  last_updated_at   TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  last_updated_by   TEXT DEFAULT 'system'
);

CREATE INDEX IF NOT EXISTS idx_company_name ON main.company (company_name);

COMMIT;

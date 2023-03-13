-- Deploy dashboard_ads:2023-19-02_users-table to pg

BEGIN;

CREATE TABLE main.users (
  id                  TEXT NOT NULL,
  email               TEXT NOT NULL UNIQUE,
  password            TEXT NOT NULL,
  full_name           TEXT DEFAULT NULL,
  gender              TEXT DEFAULT NULL,
  access              TEXT NOT NULL,
  company_id          TEXT,
  created_at          TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  created_by          TEXT NOT NULL DEFAULT 'system',
  last_updated_at     TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  last_updated_by     TEXT DEFAULT 'system',
  PRIMARY KEY(id)
);

COMMIT;

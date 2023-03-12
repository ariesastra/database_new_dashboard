-- Deploy dashboard_ads:2023-03-11-02_platform-table to pg

BEGIN;

CREATE TABLE IF NOT EXISTS main.platform (
  id                TEXT NOT NULL PRIMARY KEY,
  platform_name     TEXT UNIQUE NOT NULL,
  created_at        TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  created_by        TEXT NOT NULL DEFAULT 'system',
  last_updated_at   TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  last_updated_by   TEXT DEFAULT 'system'
);

CREATE INDEX IF NOT EXISTS idx_platform ON main.platform (platform_name);

COMMIT;

-- Deploy dashboard_ads:2023-03-11-02_platform-table to pg

BEGIN;

CREATE TABLE IF NOT EXISTS main.platform (
  id            TEXT NOT NULL PRIMARY KEY,
  platform_name TEXT NOT NULL
);

CREATE INDEX IF NOT EXISTS idx_platform ON main.platform (platform_name);

COMMIT;

-- Deploy dashboard_ads:2023-03-11-03_campaign-table to pg

BEGIN;

CREATE TABLE IF NOT EXISTS main.campaign (
  id            TEXT NOT NULL PRIMARY KEY,
  company_id    TEXT NOT NULL,
  platform_id   TEXT NOT NULL,
  campaign_name TEXT NOT NULL,
);

CREATE INDEX IF NOT EXISTS idx_campaign ON main.campaign (campaign_name);

COMMIT;

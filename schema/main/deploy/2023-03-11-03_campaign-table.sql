-- Deploy dashboard_ads:2023-03-11-03_campaign-table to pg

BEGIN;

CREATE TABLE IF NOT EXISTS main.campaign (
  id            TEXT NOT NULL PRIMARY KEY,
  company_id    TEXT NOT NULL,
  platform_id   TEXT NOT NULL,
  campaign_name TEXT NOT NULL,
  created_at        TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  created_by        TEXT NOT NULL DEFAULT 'system',
  last_updated_at   TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  last_updated_by   TEXT DEFAULT 'system'
);

CREATE INDEX IF NOT EXISTS idx_campaign ON main.campaign (campaign_name);

COMMIT;

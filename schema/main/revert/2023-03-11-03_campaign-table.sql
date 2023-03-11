-- Revert dashboard_ads:2023-03-11-03_campaign-table from pg

BEGIN;

DROP TABLE IF EXISTS main.campaign;

COMMIT;

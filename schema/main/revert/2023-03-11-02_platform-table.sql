-- Revert dashboard_ads:2023-03-11-02_platform-table from pg

BEGIN;

DROP TABLE IF EXISTS main.platform;

COMMIT;

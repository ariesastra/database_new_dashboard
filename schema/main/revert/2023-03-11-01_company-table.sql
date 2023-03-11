-- Revert dashboard_ads:2023-11-03_company-table from pg

BEGIN;

DROP TABLE IF EXISTS main.company;

COMMIT;

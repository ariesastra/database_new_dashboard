-- Revert dashboard_ads:2023-19-02_init-main-schema from pg

BEGIN;

DROP SCHEMA IF EXISTS main;

COMMIT;

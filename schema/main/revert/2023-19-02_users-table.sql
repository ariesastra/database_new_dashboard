-- Revert dashboard_ads:2023-19-02_users-table from pg

BEGIN;

DROP TABLE IF EXIST main.users;

COMMIT;

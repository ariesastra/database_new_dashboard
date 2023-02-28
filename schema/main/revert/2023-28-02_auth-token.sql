-- Revert dashboard_ads:2023-28-02_auth-token from pg

BEGIN;

DROP TABLE IF EXISTS main.auth_token;

COMMIT;

-- Deploy dashboard_ads:2023-28-02_auth-token to pg

BEGIN;

CREATE TABLE main.auth_token (
  id                TEXT NOT NULL,
  user_id           TEXT NOT NULL,
  refresh_token     TEXT,
  created_at        TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  created_by        TEXT NOT NULL DEFAULT 'system',
  last_updated_at   TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  last_updated_by   TEXT DEFAULT 'system',
  PRIMARY KEY(id)
);

CREATE INDEX IF NOT EXISTS idx_auth_token_user_id ON main.auth_token (user_id);
CREATE INDEX IF NOT EXISTS idx_auth_token_refresh_token ON main.auth_token (refresh_token);

COMMIT;

#!/bin/bash
set -e

echo "Creating database user app_user..."
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER app_user WITH PASSWORD 'trabalhobd';
    GRANT ALL PRIVILEGES ON DATABASE sistemaonibus TO app_user;
    GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO app_user;
    GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO app_user;
    ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO app_user;
    ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO app_user;
EOSQL

echo "Database initialization completed successfully!"

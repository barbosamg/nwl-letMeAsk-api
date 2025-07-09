-- Criar usuário docker se não existir (opcional)
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'docker') THEN
        CREATE USER docker WITH PASSWORD 'docker';
        GRANT ALL PRIVILEGES ON DATABASE agents TO docker;
    END IF;
END
$$;

-- Criar extensão vector
CREATE EXTENSION IF NOT EXISTS vector;
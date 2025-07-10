# NWL Agents

API backend para o projeto NWL Agents desenvolvido com Node.js, TypeScript e PostgreSQL.

## 🚀 Tecnologias

- **Node.js** - Runtime JavaScript
- **TypeScript** - Superset do JavaScript com tipagem estática
- **Fastify** - Framework web rápido e eficiente
- **PostgreSQL** - Banco de dados relacional
- **Drizzle ORM** - ORM moderno para TypeScript
- **Zod** - Validação de esquemas e tipos
- **Docker** - Containerização do banco de dados
- **Biome** - Linter e formatter

## 🏗️ Padrões de Projeto

- **MVC Pattern** - Organização em camadas (routes, controllers, models)
- **Repository Pattern** - Abstração de acesso aos dados via Drizzle ORM
- **Dependency Injection** - Injeção de dependências via Fastify
- **Type Safety** - Validação de tipos com Zod e TypeScript
- **Environment Variables** - Configuração via arquivo `.env`

## 📦 Estrutura do Projeto

```
src/
├── db/
│   ├── connection.ts    # Configuração do banco
│   ├── migrations/      # Migrações do banco
│   ├── schema/          # Esquemas das tabelas
│   └── seed.ts          # Dados iniciais
├── routes/              # Rotas da API
├── env.ts               # Configuração de variáveis de ambiente
└── server.ts            # Servidor principal
```

## 🛠️ Setup do Projeto

### Pré-requisitos

- Node.js 18+
- Docker Desktop
- Git

### Instalação

1. **Clone o repositório**

   ```bash
   git clone <url-do-repositorio>
   cd nwl-agents/server
   ```

2. **Instale as dependências**

   ```bash
   npm install
   ```

3. **Configure as variáveis de ambiente**

   ```bash
   cp .env.example .env
   ```

   Configure o arquivo `.env`:

   ```env
   PORT=3333
   DATABASE_URL="postgresql://postgres:docker@localhost:5433/agents"
   ```

4. **Inicie o banco de dados**

   ```bash
   docker-compose up -d
   ```

5. **Execute as migrações**

   ```bash
   npx drizzle-kit migrate
   ```

6. **Inicie o servidor**
   ```bash
   npm run dev
   ```

## 📊 Comandos Úteis

- `npm run dev` - Inicia o servidor em modo desenvolvimento
- `npm run start` - Inicia o servidor em modo produção
- `npm run db:seed` - Popula o banco com dados iniciais
- `npx drizzle-kit studio` - Abre o Drizzle Studio (admin do banco)
- `npx drizzle-kit migrate` - Executa migrações pendentes

## 🔗 Endpoints

- `GET /health` - Health check da API
- `GET /rooms` - Lista todas as salas

## 🐳 Docker

O projeto utiliza PostgreSQL via Docker com a extensão pgvector para suporte a vetores.

**Porta do banco:** 5433 (para evitar conflitos com PostgreSQL local)

## 🧪 Testes

Use o arquivo `client.http` para testar os endpoints da API.

## 📝 Notas

- O projeto usa Node.js com flag `--experimental-strip-types` para execução direta de TypeScript
- Banco configurado na porta 5433 para evitar conflitos
- Drizzle Studio disponível em https://local.drizzle.studio

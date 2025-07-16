# 📋 Task Manager - Backend

Backend da aplicação de gerenciamento de tarefas desenvolvido em **Phoenix Elixir** para fornecer uma API robusta e escalável.

## 🚀 Tecnologias

- **Elixir** - Linguagem de programação funcional
- **Phoenix Framework** - Framework web para Elixir
- **PostgreSQL** - Banco de dados relacional
- **Ecto** - ORM para Elixir
- **Tailwind CSS** - Framework CSS utilitário
- **Docker** - Containerização da aplicação

## 📋 Pré-requisitos

- Docker
- Docker Compose

## ‍♂️ Como executar

### Executando a aplicação

Para iniciar a aplicação, execute no terminal:

```bash
docker-compose up --build
```

A aplicação estará disponível em: `http://localhost:4000`

### Parando a aplicação

Para parar e remover todos os containers e volumes:

```bash
docker-compose down -v
```

### Desenvolvimento local

Para desenvolvimento local sem Docker:

```bash
# Instalar dependências
mix deps.get

# Configurar banco de dados
mix ecto.setup

# Iniciar servidor
mix phx.server
```

## 📁 Estrutura do projeto

```
task_manager/
├── assets/                 # Assets frontend (CSS, JS, Tailwind)
│   ├── css/
│   ├── js/
│   ├── vendor/
│   └── tailwind.config.js
├── config/                 # Configurações do Phoenix
│   ├── config.exs
│   ├── dev.exs
│   ├── prod.exs
│   ├── runtime.exs
│   └── test.exs
├── lib/                    # Código fonte da aplicação
│   ├── task_manager/       # Contextos e schemas
│   ├── task_manager_web/   # Controllers, views e templates
│   ├── task_manager.ex
│   └── task_manager_web.ex
├── priv/                   # Arquivos privados
│   ├── gettext/
│   ├── repo/              # Migrações do banco
│   └── static/
├── test/                   # Testes automatizados
│   ├── support/
│   └── task_manager_web/
├── .formatter.exs         # Configuração do formatador
├── .gitignore
├── Dockerfile             # Configuração do container
├── docker-compose.yml     # Orquestração dos serviços
├── LICENSE
├── mix.exs                # Configuração do projeto Mix
├── mix.lock               # Versões fixas das dependências
└── README.md
```

## 🔧 Comandos úteis

```bash
# Instalar dependências
mix deps.get

# Executar migrações
mix ecto.migrate

# Executar testes
mix test

# Formatar código
mix format

# Compilar assets
mix assets.build

# Acessar console interativo
iex -S mix phx.server
```

## 🌍 Variáveis de ambiente

Crie um arquivo `.env` na raiz do projeto com as seguintes variáveis:

```env
POSTGRES_USER=postgres
POSTGRES_PASSWORD=sua_senha
POSTGRES_DATABASE=task_manager_dev
```

## 🤝 Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE](LICENSE) para detalhes.

Copyright (c) 2024 Task Manager

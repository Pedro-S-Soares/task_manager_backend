FROM elixir:1.18.4

RUN apt-get update && apt-get install -y \
    curl \
    git \
    build-essential \
    inotify-tools \
    postgresql-client \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Instala Hex e Rebar
RUN mix local.hex --force && mix local.rebar --force

# Cria diretório da aplicação
WORKDIR /app

# Copia arquivos de dependência antes (cache inteligente)
COPY mix.exs mix.lock ./
COPY config config/

# Baixa as dependências do Elixir
RUN mix deps.get

# Copia o restante do projeto
COPY . .

# Compila a aplicação
RUN mix deps.compile

# Expõe a porta padrão do Phoenix
EXPOSE 4000

# Comando padrão (também definido no docker-compose.yml)
CMD ["mix", "phx.server"]
FROM alpine:latest

# Instala o Lua + compilador básico
RUN apk add --no-cache lua lua-dev build-base

# Define diretório de trabalho padrão
WORKDIR /usr/src/app

# Comando padrão ao iniciar o container (um shell interativo)
ENTRYPOINT ["/bin/sh"]

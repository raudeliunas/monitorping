# Use uma imagem base adequada
FROM alpine:3.14
RUN apk add --no-cache tzdata
ENV TZ=America/Sao_Paulo

# Copie o script Bash para o contêiner
COPY monitorping.sh /app/monitorping.sh

# Defina o diretório de trabalho
WORKDIR /app

# Instale as dependências necessárias (se houver)

# Execute o script Bash quando o contêiner iniciar
CMD ["sh", "monitorping.sh"]

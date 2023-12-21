# Use uma imagem base adequada
FROM ubuntu:latest
ENV TZ=America/Sao_Paulo
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y tzdata

# Copie o script Bash para o contêiner
COPY monitorping.sh /app/monitorping.sh

# Defina o diretório de trabalho
WORKDIR /app

# Instale as dependências necessárias (se houver)

# Execute o script Bash quando o contêiner iniciar
CMD ["sh", "monitorping.sh"]

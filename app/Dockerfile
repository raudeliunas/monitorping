# Use uma imagem base adequada
FROM ubuntu:20.04
ENV TZ=America/Sao_Paulo
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y tzdata && apt-get install -y iputils-ping

# Copie o script Bash para o contêiner
COPY monitorping.sh /app/monitorping.sh

# Defina o diretório de trabalho
WORKDIR /app

# Instale as dependências necessárias (se houver)

# Execute o script Bash quando o contêiner iniciar
CMD ["sh", "monitorping.sh"]

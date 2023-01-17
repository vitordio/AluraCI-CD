# A melhor forma de criarmos uma imagem Docker e colocar a nossa aplicação
# dentro dela é usando um Dockerfile, o arquivo criado para esse fim

# Nome da imagem que vamos utilizar, no caso, ubuntu
FROM ubuntu:latest

# Porta da aplicação
EXPOSE 8000

# Pasta para arquivos dentro do container
WORKDIR /app

# Declaração das variáveis de ambiente
ENV DB_HOST=localhost DB_PORT=5432
ENV DB_USER=root DB_PASSWORD=root DB_NAME=root

# Copia o arquivo compilado para dentro do container na pasta desejada
COPY ./main.exe main

# CMD é onde colocamos os comandos a serem executados
CMD [ "./main" ]
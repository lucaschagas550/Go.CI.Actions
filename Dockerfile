FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app

#Variavel de ambiente
ENV HOST=localhost PORT=5432

ENV USER=root PASSWORD=root DBNAME=root

#Versao copilada tem o nome main e sera copiado para dentro do container como nome main
COPY ./main main
#Executa o arqivo main que esta no dentro do container
CMD [ "./main" ]
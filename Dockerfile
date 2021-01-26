FROM ruby:2.7.2-buster

RUN apt-get update && apt-get install -y vim

WORKDIR /test

COPY . .

ENTRYPOINT ["bash", "./entrypoint.sh"]
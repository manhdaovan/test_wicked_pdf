FROM ruby:2.7.2-buster

WORKDIR /test

COPY . .

ENTRYPOINT ["bash", "./entrypoint.sh"]
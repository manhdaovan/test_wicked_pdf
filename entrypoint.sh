#!/bin/bash

gem install bundle

bundle install --path=./path

exec "$@"
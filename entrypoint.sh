#!/bin/bash

gem install bundle

bundle install --path=./path

bundle exec ruby gen.rb
#!/bin/sh

# useless comment

if ! which bundle; then
  echo "Could not find `bundle`. Run [sudo] gem install bundle."
  exit 1
fi

if [ -e Gemfile.lock ]; then
  rm Gemfile.lock
fi

bundle install --binstubs=.bin --path=.bundle
bundle clean

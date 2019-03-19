#!/bin/bash

# Publish a new version of the gem
# script/publish_to_ruby_gems.sh

mv ~/.gem/credentials ~/.gem/credentials.orig
gem build omniauth-pipedrive.gemspec
gem push omniauth-pipedrive-$(cat VERSION).gem
mv ~/.gem/credentials.orig ~/.gem/credentials

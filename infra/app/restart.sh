#!/bin/bash

cd /home/isucon/isucari/webapp
git pull

cd /home/isucon/isucari/webapp/ruby
/home/isucon/local/ruby/bin/bundle install

sudo systemctl stop isucari.ruby.service
sudo systemctl start isucari.ruby.service

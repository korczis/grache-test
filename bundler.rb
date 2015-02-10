# encoding: utf-8

# Bundler hack
require 'bundler/cli'
Bundler::CLI.new.invoke(:install, [], :verbose => true)

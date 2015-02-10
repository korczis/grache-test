# encoding: utf-8

# Bundler hack
require 'bundler/cli'
Bundler::CLI.new.invoke(:install, [], :verbose => false)

Bundler::CLI.new.invoke(:exec, ['ruby', 'main.rb'], :verbose => false)
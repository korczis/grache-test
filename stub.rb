#! /usr/bin/env ruby

# Gem install grache
system 'gem install grache --pre' unless system('gem query -i -n grache > /dev/null')

require 'grache'

puts "Using grache version #{Grache::VERSION}"

# Fetch grache pack
Grache::Packer.new.install()

# Bundler hack
require 'bundler/cli'

# Install gems required by main.rb
Bundler::CLI.new.invoke(:install, [], :verbose => false)

# Run main.rb
Bundler::CLI.new.invoke(:exec, ['ruby', 'main.rb'], :verbose => false)
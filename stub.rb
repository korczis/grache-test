#! /usr/bin/env ruby

require 'rubygems'

# Gem install grache
system 'gem install grache' unless system('gem query -i -n grache > /dev/null')

require 'grache'

puts "Using grache version #{Grache::VERSION}"

# Fetch grache pack
Grache::Packer.new.install()

# Bundler hack
require 'bundler/cli'

# Install gems required by main.rb
# Bundler::CLI.new.invoke(:install, [], :verbose => false)
system('bundle install')

# Run main.rb
# Bundler::CLI.new.invoke(:exec, ['ruby', 'main.rb'], :verbose => false)
system('bundle exec ruby main.rb')

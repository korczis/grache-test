#! /usr/bin/env ruby

require_relative 'core'

require 'rubygems'

grem('update --system')
grem('update bundler')

# grash('mkdir -p ~/.gem/jruby/1.9/ && cd ~/.gem/jruby/1.9 && ln -s /usr/share/ruby/gems/cache')

# puts 'Installing bundler'
# cmd = "install bundler"
# grem(cmd)

# See https://gist.github.com/adamjmurray/3154437
puts 'Installing grache'
cmd = "install --verbose grache"
grem(cmd)

begin
  require 'grache'
rescue LoadError => e
  puts e.inspect
  raise e
end

puts "Using grache version #{Grache::VERSION}"

# Fetch grache pack
# Grache::Packer.new.install()

# Install gems required by main.rb
# Bundler::CLI.new.invoke(:install, [], :verbose => false)
grundler('install')

# Run main.rb
# Bundler::CLI.new.invoke(:exec, ['ruby', 'main.rb'], :verbose => false)
grundler('exec ruby main.rb')

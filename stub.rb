#! /usr/bin/env ruby

require_relative 'core'

# require 'rubygems'

# grem('update --system')
# grem('update bundler')

# grundler('install --gemfile=Gemfile.stub')

require 'bundler/cli'
Bundler::CLI.new.invoke(:install, [], :gemfile => 'Gemfile.stub', :deployment => true, :verbose => true)
require 'bundler/setup'

grash('cat .bundle/config')

# grash('mkdir -p ~/.gem/jruby/1.9/ && cd ~/.gem/jruby/1.9 && ln -s /usr/share/ruby/gems/cache')

# puts 'Installing bundler'
# cmd = "install bundler"
# grem(cmd)

# See https://gist.github.com/adamjmurray/3154437
# puts 'Installing grache'
# cmd = "install --verbose grache"
# grem(cmd)

begin
  require 'grache'
rescue LoadError => e
  puts e.inspect
  raise e
end

puts "Using grache version #{Grache::VERSION}"

# Fetch grache pack
Grache::Packer.new.install()
Bundler::CLI.new.invoke(:install, [], :gemfile => 'Gemfile.stub', :deployment => true, :verbose => true)

# Show installed gems
Bundler::CLI.new.invoke(:show, [], :verbose => true)

# puts `find #{$GEM_PATH}`

# require_relative './main.rb'

# gruby('./main.rb')
# Run main.rb
# Bundler::CLI.new.invoke(:exec, [$JAVA_CMD, '-jar', $RUBY_CMD, './main.rb'], :verbose => true)
# grundler('exec ruby main.rb')
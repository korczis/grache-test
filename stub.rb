#! /usr/bin/env ruby

# Gem install grache if needed
# unless system('gem query -i -n grache > /dev/null')
# end

puts "GEM_HOME = #{ENV['GEM_HOME']}"

GEM_CMD = RUBY_PLATFORM == 'java' ? 'jruby -S gem' : 'gem'

puts 'Installing bundler'
puts `#{GEM_CMD} install bundler`

require 'rubygems'
require 'rubygems/commands/install_command'

# See https://gist.github.com/adamjmurray/3154437
puts 'Installing grache'
puts `#{GEM_CMD} install grache`

begin
  require 'grache'
rescue LoadError => e
  puts e.inspect
  raise e
end

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

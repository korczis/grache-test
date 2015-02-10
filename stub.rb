#! /usr/bin/env ruby

require 'rubygems'
require 'rubygems/commands/install_command'

# Gem install grache if needed
unless system('gem query -i -n grache > /dev/null')
  cmd = Gem::Commands::InstallCommand.new
  cmd.handle_options ["--no-ri", "--no-rdoc", 'grache']
  begin
    cmd.execute
  rescue Gem::SystemExitException => e
    puts "DONE: #{e.exit_code}"
  end
end

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

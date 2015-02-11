#! /usr/bin/env ruby

require 'fileutils'

require_relative 'core'

$SCRIPT_PARAMS ||= {}

FETCH_GEMS = $SCRIPT_PARAMS['FETCH_GEMS'] || true

repo_gems = [
  'https://github.com/korczis/grache/archive/master.zip'
]

if FETCH_GEMS
  repo_gems.each do |repo_gem|
    cmd = "curl -LOk --retry 3 #{repo_gem} 2>&1"
    puts cmd
    system(cmd)

    repo_gem_file = repo_gem.split('/').last

    cmd = "unzip -o #{repo_gem_file} 2>&1"
    puts cmd
    system(cmd)

    FileUtils.rm repo_gem_file
  end
end

grash('cp -a grache-master/lib/* .')

require_relative 'grache'

puts "Grache::VERSION = #{Grache::VERSION}"

# Fetch grache pack
Grache::Packer.new.install

require 'bundler/cli'
Grache::Packer.new.install()
Bundler::CLI.new.invoke(:install, [], :gemfile => 'Gemfile', :local => true, :deployment => true, :verbose => true)
# require 'bundler/setup'

grash('cat .bundle/config')

# Show installed gems
Bundler::CLI.new.invoke(:show, [], :verbose => true)

require_relative './main.rb'

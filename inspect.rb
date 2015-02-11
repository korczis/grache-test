# encoding: utf-8

require 'gooddata'
require 'json'
require 'pp'

puts "ARGV = #{JSON.pretty_generate(ARGV)}"
puts ''

puts "ENV = #{JSON.pretty_generate(ENV)}"
puts ''

puts "SCRIPT_PARAMS = #{JSON.pretty_generate($SCRIPT_PARAMS.to_hash)}"
puts ''

puts 'Listing home directory:'
puts `ls -la ~`
puts ''

puts "GoodData::VERSION = #{GoodData::VERSION}"

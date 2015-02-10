# encoding: utf-8

require 'gooddata'
require 'json'
require 'pp'

puts "ENV = #{JSON.pretty_generate(ENV)}"
puts "SCRIPT_PARAMS = #{JSON.pretty_generate($SCRIPT_PARAMS.to_hash)}"

puts "GoodData::VERSION = #{GoodData::VERSION}"

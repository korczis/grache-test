#! /usr/bin/env ruby

require 'gooddata'
require 'json'

$SCRIPT_PARAMS ||= {}

puts "GoodData::VERSION = #{GoodData::VERSION}"

client = GoodData.connect :sst_token => $SCRIPT_PARAMS['GDC_SST']
puts JSON.pretty_generate(client.user.json)



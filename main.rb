# encoding: utf-8

require 'gooddata'
require 'json'

puts "GoodData::VERSION = #{GoodData::VERSION}"

client = GoodData.connect :sst_token => $SCRIPT_PARAMS['GDC_SST']
puts JSON.pretty_generate(client.user.to_h)

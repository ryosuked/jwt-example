require 'json'
require 'base64'

puts "json = #{JSON.parse(ARGV[0])}"
puts "decode = #{Base64.encode64(JSON.parse(ARGV[0]).to_json)}"

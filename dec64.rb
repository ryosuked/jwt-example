require 'json'
require 'base64'

puts "decode = #{Base64.decode64(ARGV[0])}"
puts "json = #{JSON.parse(Base64.decode64(ARGV[0])).to_json}"

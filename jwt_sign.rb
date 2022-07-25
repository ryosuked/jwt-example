require 'openssl'
require 'jwt'
require 'base64'
require 'json'

rsa_private_file = 'n_rsa'

payload = JSON.parse(ARGV[0])
rsa_private = OpenSSL::PKey::RSA.new(open (rsa_private_file))
token = JWT.encode payload, rsa_private, 'RS256'
puts token

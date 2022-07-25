require 'openssl'
require 'jwt'
require 'base64'

rsa_public = OpenSSL::PKey::RSA.new(open './n_rsa.pub')

token = ARGV[0]
dec = JWT.decode token, rsa_public, true, { :algorithm => 'RS256' }
(dec_payload, dec_header) = dec

#puts token
puts dec_header
puts dec_payload

if dec
  print "valid"
end

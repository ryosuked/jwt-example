require 'openssl'
require 'jwt'
require 'base64'

rsa_private = OpenSSL::PKey::RSA.generate 2048
rsa_public = rsa_private.public_key

name = 'n'
public_key = open "./#{name}_rsa.pub", "w"
private_key = open "./#{name}_rsa" , "w"

private_key.puts rsa_private.to_pem
public_key.puts rsa_private.public_key.to_pem

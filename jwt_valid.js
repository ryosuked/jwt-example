"use strict"

let fs = require('fs'),
    rs = require('jsrsasign')

// let KEYUTIL = rs.KEYUTIL
// fs.readFile('./n_rsa.pub', 'ascii', function (err, pub_key) {
//   console.log(KEYUTIL.getKey(pub_key))
// })

let token = process.argv[2]
let public_key_file = './n_rsa.pub'
//console.log(token)

fs.readFile(public_key_file, 'ascii', (err, pub_key) => {
  console.log(new Buffer(token.split(".")[0], 'base64').toString())
  console.log(new Buffer(token.split(".")[1], 'base64').toString())
  let is_valid = rs.jws.JWS.verify(token, pub_key,  ['RS256'])
  console.log(is_valid)
})

#!/usr/bin/env ruby
require 'digest'

finished = false
transactions = "Hello, world!"
nonce = 0
difficulty = 4

while !finished
  digest = Digest::SHA256.hexdigest(transactions + nonce.to_s)

  if digest[0, difficulty] == "0" * difficulty
    puts "DONE"
    puts transactions + nonce.to_s
    puts digest
    finished = true
  end

  nonce += 1
end


# imagine you are trying to a bunch of different keys

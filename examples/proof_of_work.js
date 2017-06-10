#!/usr/bin/env node
var crypto = require("crypto");

var transactions = "Hello, world!";
var finished = false;
var nonce = 0;
var difficulty = 4;

while (!finished) {
  var hash = crypto.createHash("sha256");
  hash.update(transactions + nonce);
  var digest = hash.digest('hex');

  if (digest.slice(0, difficulty) == "0".repeat(difficulty)) {
    console.log("DONE");
    console.log(transactions + nonce);
    console.log(digest);
    finished = true;
  }

  nonce += 1;
}

// # Ex. 1

// Synchronous
console.log('First');
console.log('Second');
console.log('Third');

// Asynchronous
console.log('First');
fs.readFile('file.txt', function (err, data) {
  if (!err) {
    console.log("Second");
  }
});
console.log('Third');


// # Ex. 2
var fs = require("fs");

for (var i = 0; i < 50; i++) {
  fs.readFile('first.txt', 'utf8', function(err, data) {
    if (!err) {
      console.log(data);
    }
  });

  fs.readFile('second.txt', 'utf8', function(err, data) {
    if (!err) {
      console.log(data);
    }
  });
}

console.log("Third");

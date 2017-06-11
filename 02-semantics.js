// SEMANTICS!

// Evaluation rules
1 == '1'
1 == parseInt('1')
1 === '1'

// Array comparisons
// UGH https://stackoverflow.com/questions/7837456/how-to-compare-arrays-in-javascript
[1, 2, 3] == [1, 2, 3]

var foo = [1, 2, 3];
foo == foo

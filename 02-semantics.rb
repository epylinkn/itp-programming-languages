# SEMANTICS!

# Evaluation rules
1 == '1'
1 == '1'.to_i

[1, 2, 3] == [1, 2, 3]
foo = [1, 2, 3]
foo == foo

# Developer friendly!
beatles = ["John", "Paul", "George", "Ringo"]
beatles - ["John"]

beatles == ["Ringo", "George", "Paul", "John"]
(beatles - ["Ringo", "George", "Paul", "John"]) == []

# Boolean

# Ruby is really, really object-oriented
3.class
3.abs
-3.abs
"giraffe".length
a = "giraffe"
a.reverse

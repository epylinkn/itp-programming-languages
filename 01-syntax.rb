# this is a comment

# boolean
true
false

# numbers
3
1.337

# strings
'bar'
"foo"

# lists
[1, 2, 3]
["foo", 1, true]
["john", "paul", "george", "ringo"]

# hashes
grades = {
  "John" => 82,
  "Paul" => 88,
  "George" => 99,
  "Ringo" => 50
}
grades["Ringo"]

# expressions / addition
1 + 1
(1 + 1) * 10
(4 % 3) == 1
"foo" != "bar"

# expressions / comparison operators
2 != 3
2 < 3
2 <= 2

# boolean expressions
true || false
true or false
true && false
true and false

# variable assignment
my_variable = "itp"

# calling a function
my_variable.length
my_variable.reverse
my_variable.upcase
my_variable.slice(0, 2)

# conditional statement
if true then
  puts "conditional was true"
end

# single-line conditionals!
puts "Beatles" if true

great_band = true
puts "Nickelback" if !great_band
puts "Limp Bizkit" unless great_band

# defining a method
def square(n)
  n * n
end

# loops!
for i in 0..5
  puts "i is now: #{i}"
end

# loop with block syntax
(0..5).each do |i|
  puts "i is not: #{i}"
end

# awesomeness
5.times { puts "EVERYTHING IS AWESOME!" }

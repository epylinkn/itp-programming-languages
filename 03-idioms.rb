# Idioms come in all shapes and sizes
# As you use a programming language more you'll learn more of its common idioms
# This is when you finally start developing expertise at a language. =P


# Simple idiom: Mallet memoization
def long_calculation
  sleep(5) # do some complex operation like hit an API
end

if result == nil
  result = long_calculation
end

result ||= long_calculation


# Intermediate idiom: Duck typing
# They implement the same method but they aren't contractually obligated to.
class Dog
  def wag_tail
    puts "dog wags tail"
  end
end

class Cat
  def wag_tail
    puts "cat wags tail"
  end
end

[Cat.new, Dog.new].each { |animal| animal.wag_tail }


# Advanced idiom: method_missing magic
# Ruby lets you capture method calls that aren't defined!
class Dummy
  def method_missing(m, *args, &block)
    "You just called method with name #{m} and arguments- #{args}"
  end
end

Dummy.new.anything(10, 20)
=> "You just called method with name anything and arguments- [10, 20]"

# This opens us up to domain-specific languages (DSLs)!
# Ruby is known for being very readable and some of that has to do with the power of DSLs
# rspec example
describe Array do
  describe "includes_subset?" do
    it "finds subsets" do
      a = [1,2,3,4,5]
      b = [1,2]
      expect(a.includes_subset?(b)).to eq(true)
    end
  end
end

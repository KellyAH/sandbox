# what is self
# a Ruby keyword that gives you access to the current object.
# The “current object” depends on the context.

def coffee
  puts self
end

coffee
#=>returns main
# Because it’s the name of the top-level object, it’s an object where you’ll find all the methods defined outside a class.

class Cat
  def meow
    puts self
  end
end

Cat.new.meow
#=> <Cat:0x7a14c5>


class Example
  puts self

  def self.banana
    puts "method"
  end
end



# def Dog.apple
#   puts "new_method_again"
# end


e = Example.new
e2 = Example.new

def e.apple
  puts "kjhkjhjk"
end

Example.banana

e.apple
e2.apple

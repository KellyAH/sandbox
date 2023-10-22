# what is self
# a Ruby keyword that gives you access to the current object.
# The “current object” depends on the context.

# def coffee
#   puts self
# end

# coffee
#=>returns main
# Because it’s the name of the top-level object, it’s an object where you’ll find all the methods defined outside a class.

class Cat
  def meow
    puts self
  end
end

Cat.new.meow
#=> <Cat:0x7a14c5>

puts "this is outside a class: #{self}"

class Example
  puts "this is inside Example class: #{self}"

  def self.banana
    puts "this is inside Example class's banana method: #{self}"
  end

  def banana
    puts "this is inside Example class's instance banana method: #{self}"
  end
end



#
#
#
# # ruby lets you do this but DON'T DO IT
# def Example.banana
#   puts "new_method"
# end
#
# def Example.apple
#   puts "new_method_again"
# end
#
# # def Dog.apple
# #   puts "new_method_again"
# # end
#
#
# Example.apple
#
# Example.banana
#
#
# # "variable"  => puts banana
# # "method"    => puts self.banana

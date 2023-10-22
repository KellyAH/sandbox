# puts "this is outside a class: #{self}"
# puts "this is outside a class: #{self.class}"
# puts "this is outside a class: #{self.class.class}"
# puts "this is outside a class: #{self.class.ancestors}"
# # puts "this is outside a class: #{self.ancestors}"
# puts "this is outside a class: #{String.ancestors}"

# class is itself and allows other classes to be created.
# Class
# - Class.new
# Class can be the idea of a class. e.g. i made a class
# or the actual ruby object Class which itself is a class and an object


class Example

  def self.apple
    puts "this is inside Example class's banana method: #{self}"
  end

  def banana
    puts self.class
    self.class.apple
    Example.apple
  end
end

class Dog < Example
  def self.apple
    puts "this is inside the Dog class method: #{self}"
  end
end

d = Dog.new
d.banana

puts BasicObject.superclass
puts Object.superclass
puts Example.superclass
puts Dog.superclass

# only work in rails
# puts Dog.descendants

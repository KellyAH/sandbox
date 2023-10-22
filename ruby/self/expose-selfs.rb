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
  puts "this is inside Example class: #{self}"

  def self.apple
    puts "this is inside Example class's banana method: #{self}"
  end

  def banana
    self.class.apple
    Example.apple
    #apple
    puts "this is inside Example class's instance banana method: #{self}"
    puts "this is inside Example class's instance banana method: #{self.class}"
  end
end

# Example.banana
e = Example.new
e.banana


def apple
  puts "this is inside Example class's instance banana method: #{self}"
  puts "this is inside Example class's instance banana method: #{self.class}"
end

apple

def self.pineapple
  puts "this is inside Example class's instance banana method: #{self}"
  puts "this is inside Example class's instance banana method: #{self.class}"
end

pineapple


class Cat
  def meow
    puts self
    p "meow"
  end
end

c = Cat.new
c.meow

# don't so this either. bad practice.
def c.meow
  puts "bark"
end

c.meow

class Singer
  def sing
    puts "Lalala"
  end
end

a = Singer.new
puts a.object_id
a.sing

b = Singer.new
puts b.object_id
b.sing

c = Singer.new
puts c.object_id
c.sing
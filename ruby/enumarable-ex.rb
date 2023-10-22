class MyArray
  include Enumerable

  def initialize
    @my_array = Array.new
  end

  def push(*values)
    @my_array.concat(values)
  end

  def pop
    @my_array.pop
  end

  # when Enumarable is included in a class, it requires an each method to be defined.
  def each(&block)
    array_length = @my_array.length
    for number in 0...array_length do
      block.call(@my_array[number])
    end
  end

  # todo array implemnetations, hash map, compariables im
  def <=>(target, compariable)

  end

  def to_s
    @my_array.inspect
  end
end



a = MyArray.new
puts a
a.push("bat","cat","dog")
# p a.to_s
# a.each {|word| puts word}

puts a.select {|x| x == "dog" }

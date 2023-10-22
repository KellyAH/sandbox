require 'rspec'
# TODO: FUTURE: make a linked list array, alt method to grow array
# TODO: study ruby hash map
# TODO: ring buffer
# This class just dumbs down a regular Array to be staticly sized.
class StaticArray
  # creates array of fixed capacity
  def initialize(capacity)
    self.store = Array.new(capacity, nil)
    @capacity = capacity
  end

  # reading index
  def [](index)
    self.store[index]
  end

  # saving value to index
  def []=(index, value)
    # throw error if setting array beyond the arrays capacity
    raise StandardError.new "Out of bounds" if index >= @capacity
    self.store[index] = value
  end

  protected
  attr_accessor :store
end

class DynamicArray
  def initialize(initial_capacity=5)
    @current_capacity = initial_capacity
    @length = 0
    @array = StaticArray.new(length=initial_capacity)
  end

  # number of elements, NOT the number storage space
  def length
    @length
  end

  # length = Dynamic array length
  # index = index to fetch an element from
  def [](index)

    # if l = 4 and i = 4 == out of bounds
    # if l = 4 and i = 2 == out of bounds
    raise "index out of bounds" if index >= self.length
    @array[index]
  end

  # [nil, nil, nil, nil, 5]
  # [x, x, x] <-- pushes items from left to right.
  # because if it pushed right to left, array[0] would return nil and not the value you want.
  def push(value)
    if length >= @current_capacity
      grow
    end

    @array[@length] = value
    @length = @length + 1
  end

  # TODO make pop take a arg
  # mutates caller and removes and returns last item
  def pop()
    # [0, 1, 2, 3, 4]
    index = @length - 1
    result = @array[index]
    # "delete" array by setting it as nil e.g. [0, 1, 2, 3, nil]
    @array[index]=nil
    # decrement length
    @length = @length - 1
    result
  end

  private
  # double array size when array capacity is exceeded
  def grow
    # create a new array that is double sized
    doubled_capacity = @current_capacity*2
    new_array = StaticArray.new(length=doubled_capacity)

    # populate new array
    @current_capacity.times do |index|
      new_array[index] = @array[index]
    end

    @current_capacity = doubled_capacity
    @array = new_array
  end
end

  # num of eles in array is not the same as space allocated
  # [nil,nil,nil]  length = 0

# uses these tests https://github.com/matthewjf/algorithms/blob/master/dynamic_array_ring_buffer/spec/dynamic_array_spec.rb
# run tests: rspec sandbox/static_array.rb --format doc

describe DynamicArray do
  it "starts out empty" do
    arr = DynamicArray.new
    expect(arr.length).to eq(0)
    expect do
      arr[0]
      end.to raise_error("index out of bounds")
    end

  it "pushes/pops items" do
    arr = DynamicArray.new

    5.times { |i| arr.push(i) }
    expect(arr.length).to eq(5)
    5.times { |i| expect(arr[i]) == i }

    4.downto(0) do |i|
      expect(arr.pop).to eq(i)
    end
    expect(arr.length).to eq(0)
  end

  # it "throws Error on array larger than 5" do
  #   arr = DynamicArray.new
  #   expect {
  #     6.times { |i| arr.push(i) }
  #   }.to raise_error(StandardError)
  # end

  it "grows a dynamic array" do
    arr = DynamicArray.new(2)
    3.times { |i| arr.push(i) }
    # validate array elements
    3.times { |i| expect(arr[i]).to eq(i) }
    5.times { |i| arr.push(i) }
    # print out array
    8.times { |i| puts arr[i] }
  end
end

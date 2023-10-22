class BrownDog

  attr_reader :name

  def initialize(name)
    @color = "brown"
    @name = name
  end

  def speak
    puts "Bark"
    speakWoof
  end

  def run_speed
    puts color
    puts name
    speak
  end

  def get_dog_from_3rd_party_service
    sleep 3
    result = rand >= 0.5
    puts result
    return result
  end

  private
  def speakWoof
    puts "Woof"
  end

  # attr_reader :color
  def color
    @color.to_sym
  end
end


rover = BrownDog.new("Spot")
def rover.get_dog_from_3rd_party_service
  result = 1
  puts result
  return result
end

# rover.run_speed
rover.get_dog_from_3rd_party_service
module Singer
  def sing
    puts "lallala"
  end
end

class Athlete
  include Singer # mixin module to make it invokable by Athlete class obj.
  def leap
    puts "jumped"
  end
end

a = Athlete.new
a.leap
a.sing # undefined method `sing' when not module not mixin
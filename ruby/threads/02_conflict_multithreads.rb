# https://www.tutorialspoint.com/ruby/ruby_multithreading.htm
# https://www.rubyguides.com/2015/07/ruby-threads/

# todo make multi threads access the same object and thus corrupt it or lock it up

# Threads make your Ruby programs do multiple things at the same time.
# * Reading multiple files
# * Handling multiple web request
# * Making multiple API connections

# As a result of using threads, you’ll have a multi-threaded Ruby program, which is able to get things done faster.
#
# Every process has at least one thread & you can create more on demand.
#
def addFive(number)
  sleep 2
  number + 5
end

# TODO - why not work?
# undefined method `-' for #<Thread
# def minusTwo(number)
#   (number - 2)
# end

def addTen(number)
  sleep 2
  number + 10
end

# def printResult (result)
#   puts "The result is: #{result}"
# end

# 5 + 5 => 10
first_thread = Thread.new{addFive(5)}
# The problem is that Ruby doesn’t wait for threads to finish.
# You need to call the join method on your thread to fix the code above:
first_result = first_thread.value
puts first_result

# 10 + 10 => 20
second_thread = Thread.new{addTen(first_result)}

# printResult(second_thread.join.value)
second_result = second_thread.value
puts second_result
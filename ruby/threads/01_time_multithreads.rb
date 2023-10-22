# https://www.tutorialspoint.com/ruby/ruby_multithreading.htm
# https://www.educba.com/thread-in-ruby/
#
# multiple threads are not actually executed in parallel, but parallelism is simulated by interleaving the execution of the threads.
# Ruby makes it easy to write multi-threaded programs with the Thread class. Ruby threads are a lightweight and efficient way to achieve concurrency in your code.

# start a new thread
Thread.new do
  #  do something
end

def dayClassTime
  counter1 = 0
  while counter1<=2
    puts "Day Class starts at: #{Time.now}"
    sleep(2)
    counter1 = counter1+1
  end
end

def nightClassTime
  counter2 = 0
  while counter2<=2
    puts "Night Class starts at: #{Time.now}"
    sleep(1)
    counter2 = counter2+1
  end
end

puts "School opens at: #{Time.now}"
thread_01 = Thread.new{dayClassTime()}
thread_02 = Thread.new{nightClassTime()}

puts thread_01.join
puts thread_02.join

puts "School classes at: #{Time.now}"
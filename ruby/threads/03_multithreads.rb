# https://www.rubyguides.com/2015/07/ruby-threads/
# https://ruby-doc.org/core-2.5.0/Thread.html
#
# If we don't call thr.join before the main thread terminates, then all other threads including thr will be killed.
thread_01 = Thread.new{puts 5+5}
puts "addition"
first_result = thread_01.join

thread_02 = Thread.new{puts thread_01.join + 2}
puts "more addition"
second_result = thread_02.join
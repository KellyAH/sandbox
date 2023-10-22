# URL: https://launchschool.com/books/ruby/read/more_stuff#regex
#
# 2. What will the following program print to the screen? What will it return?
#
# def execute(&block)
#   block
# end
#
# execute { puts "Hello from inside the execute method!" }
# => prints nothing and returns nothing

# Because...
# def execute(&block) <-- this & turns a block into a proc and vice versa
#   block <-- this is a Proc. Procs can only be executed via .call
# end

# REMINDER: A proc is an object that contains a code block so that the code block can be executed later
# procs can be passed into a method as an argument, and a method can execute a code block inside a proc by calling the proc.
# Read the deep dive about procs and yielding to blocks in https://medium.com/@sihui/what-the-heck-are-code-blocks-procs-lambdas-and-closures-in-ruby-2b0737f08e95

# See deep dive about converting blocks to procs etc in https://medium.com/@sihui/proc-code-block-conversion-and-ampersand-in-ruby-35cf524eef55

# Convert a block passed into a method into a proc
def execute_block_converted_into_proc(&block)
  block.call
end

execute_block_converted_into_proc {p "This is a block"}

# Convert a proc passed to a method into a block
def convert_proc_into_block
  yield
end

pr = proc {p "This is a proc"}
convert_proc_into_block &pr # <- the ampersand converts a proc into a block and appends the block to the method, NOT passing the block in as an argument to the method.
# NOTE: &pr is ruby syntactic sugar for pr.to_proc.call

# Pass an argument and append a block
def takes_a_arg(thing)
  puts thing
  yield
end

arg = "hi"
pr = proc {puts "this is a proc"}
takes_a_arg(arg, &pr)

# 4. Modify the code in exercise 2 to make the block execute properly.
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# 5. Why does the following code...
# def execute(block)
#   block.call
# end
#
# execute { puts "Hello from inside the execute method!" }
#
# Give us the following error when we run it?
# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'
#
# def execute(block)
#   block.call <- only procs are called. Blocks must be yielded to
# end
#
# execute { puts "Hello from inside the execute method!" }
#
# Fixed via yielding to the block
def execute
  yield
end

execute { puts "Hello from inside the execute method!" }

# or fixed by converting the block into a proc
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
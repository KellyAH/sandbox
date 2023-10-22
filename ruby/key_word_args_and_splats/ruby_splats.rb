# Keyword arguments were fully separated from positional arguments in ruby 3.0
# https://www.youtube.com/watch?v=OAj7JyKUXwA&ab_channel=WinstonKotzan
# https://www.ruby-lang.org/en/news/2019/12/12/separation-of-positional-and-keyword-arguments-in-ruby-3-0/
# https://rubyreferences.github.io/rubychanges/3.0.html#keyword-arguments-are-now-fully-separated-from-positional-arguments
# https://juanitofatas.com/ruby-3-keyword-arguments

# Ruby argument types:
# * splat (*)
# * double splat (**)

# ----------
# splat (*)
# ----------
# https://alexcastano.com/everything-about-ruby-splats/
# great for methods that will receive an undefined number of arguments.
# NOTE: can even make an array out of anything
# see: https://www.youtube.com/watch?v=BRdds2lcBNA&ab_channel=DriftingRuby

def my_method(variable, *array, **json)
  return variable, array, json
end
puts my_method(1).inspect
# => # [1, [], {}]
puts my_method(1, 2, 3,4, a: "b", c: "d").inspect

def single_splat(greeting, *names)
  puts names.class
  puts names.inspect
  names.each{|name| puts "#{greeting} #{name}."}
end

single_splat("Hello!", "Alice" )
single_splat("Hello!", "Alice", "Bob", "Carl" )
# =>
# a splat *, gathers up all remaining args and coverts them to array
# Array
# ["Alice", "Bob", "Carl"]
# Hello! Alice.
# Hello! Bob.
# Hello! Carl.

single_splat("Hello!", ["Alice", "Bob", "Carl" ])
# if an array is passed, it's converted to 2D array
# Array
# [["Alice", "Bob", "Carl"]]
# => Hello! ["Alice", "Bob", "Carl"].

# pass a hash in as the last argument to a method.
def arguments_and_opts(*args, opts)
  puts "arguments: #{args} options: #{opts}"
end

arguments_and_opts 1,2,3, :a=>5
# arguments: [1, 2, 3] options: {:a=>5}

# ----------
# double splat (**)
# ----------
# Created specifically for processing hashes
# only works if we pass a hash to it.
# https://medium.com/@sologoubalex/parameter-with-double-splat-operator-in-ruby-d944d234de34

# keyword args passed to dbl splat param is converted to a hash
# ** means method accepts only any number of a list of key word args
def keyword_args_to_hash(**kwargs)
  # covert kwarg into hash
  p kwargs.inspect
  p "here"
end
keyword_args_to_hash(a: 1, b: 2)
keyword_args_to_hash(**{a: 1, b: 2})
# breaks in ruby 3.0
keyword_args_to_hash({a: 1, b: 2})
# hash args passed to dbl splat param is converted to a ? hash...
def hash_to_keyword_args(a:, b:)
  p hash.inspect
end
hash = {a: 1, b: 2}
# manually convert hash to a list of key word args
hash_to_keyword_args(**hash)

# **books_and_articles converts any key word args passed in, into a hash
# def print_list_of(**books_and_articles)
#   books_and_articles.each do |book, article|
#     puts book
#     puts article
#   end
# end
#
#
# books_and_articles_we_love = {
#     "Ruby on Rails 4": "What is webpack?",
#     "Ruby essentials": "What is Ruby Object Model?",
#     "Javascript essentials": "What is Object?"
# }
# print_list_of(books_and_articles_we_love)
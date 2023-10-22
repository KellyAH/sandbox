# Keyword arguments were fully separated from positional arguments in ruby 3.0
# https://www.youtube.com/watch?v=OAj7JyKUXwA&ab_channel=WinstonKotzan
# https://www.ruby-lang.org/en/news/2019/12/12/separation-of-positional-and-keyword-arguments-in-ruby-3-0/
# https://rubyreferences.github.io/rubychanges/3.0.html#keyword-arguments-are-now-fully-separated-from-positional-arguments
# https://juanitofatas.com/ruby-3-keyword-arguments

# Ruby argument types:
# * Positional arguments
# * optional arguments
# * keyword arguments

# ----------
# Required Positional args
# ----------
# def positional_args(arg1, arg2);
# puts "#{arg1} divided by #{arg2} is: #{arg1/arg2}"
# end
# # ! --- args MUST be passed in the correct order -- !
# positional_args(6, 2)
# # => 6 divided by 2 is: 3
#
# # Else, the output evaluates to an undesired result
# positional_args(2, 6)
# # => 2 divided by 6 is: 0
#
# # ----------
# # Optional Positional args
# # ----------
# require 'json'
# def optional_args(user_type = "Guest", data = {})
#   puts "Fetching #{user_type} data: "
#   puts JSON.pretty_generate(data)
# end
#
# # no args passed
# optional_args
# # => Fetching Guest data:
# # { }
#
# # passing args
# optional_args("Player", {name: "StarFox", levels: [3,2]})
#
# # don't even need to include curly brackets
# optional_args("Player", name: "SunSpot", levels: [5])
#
# # can pass hash object
# # can just keep adding tons of data added to the hash
# hash = {name: "Ratchet", levels: [3,2], rank: "cadet"}
# optional_args("Player", hash)
#
# # ----------
# # keyword arguments
# # ----------
# # required args
# def required_keyword_args(greeting:, first_name:, last_name:)
#   puts "#{greeting} #{first_name} #{last_name}."
# end
# # keyword args can be passed in any order
# required_keyword_args(first_name: "Jane", greeting: "Hi", last_name: "Doe")
#
# # optional args
# def optional_keyword_args(greeting: "Welcome", first_name: "Honored", last_name: "Guest")
#   puts "#{greeting} #{first_name} #{last_name}."
# end
# optional_keyword_args
#
# # optional and required args
# def mixed_keyword_args(greeting: "Welcome", first_name:, last_name:)
#   puts "#{greeting} #{first_name} #{last_name}."
# end
# mixed_keyword_args(last_name: "Joe", first_name: "Shmo")

# a feature in ruby 2.7.2. automatically converts a hash arg into keyword args
# WARN: but it will break in ruby 3.0 where that feature is removed.
# wrong number of arguments (given 1, expected 0; required keywords: greeting, first_name, last_name) (ArgumentError)
def hash_arg_converts_to_key_words(greeting:, first_name:, last_name:)
  puts "#{greeting} #{first_name} #{last_name}."
end

hash = { first_name: "Jane", greeting: "Hi", last_name: "Doe" }
# hash_arg_converts_to_key_words(hash)
# below is the fix for ruby 3.0
hash_arg_converts_to_key_words(**hash)
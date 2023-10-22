# Deep dive with Lailson 4/14/2021

# How to create a regex capture group
# the solution that Launch school posts to exercise 1 uses [regex] =~ word instead of word =~ [regex].
# URL: https://launchschool.com/books/ruby/read/more_stuff#regex
# I wanted to know why some one would use [regex] =~ word and what the quote:
# "If =~ is used with a regexp literal with named captures, captured strings (or nil) is assigned to local variables named by the capture names."
# means in ruby docs https://ruby-doc.org/core-2.6.5/Regexp.html#method-i-3D-7E

# [regex] =~ word can be used like below to create a named capture group (Match Data) that is auto parsed into key value pairs
/\((?<areacode>\d{3})\) (?<phonenumber>\d{3}-\d{4})/ =~ '(876) 765-0987'

puts areacode
# => "876"
puts phonenumber
# => "765-0987"

# You can also use the synonyms Thread.start and Thread.fork.


# https://www.rubyguides.com/2015/07/ruby-threads/
# In MRI (Matz’s Ruby Interpreter), the default way to run Ruby applications, you will only benefit from threads when running i/o bound applications.
#
#     This limitation exists because of the GIL (Global Interpreter Lock).
#
#         Alternative Ruby interpreters like JRuby or Rubinius take full advantage of multi-threading.
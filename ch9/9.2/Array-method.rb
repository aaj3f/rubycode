require "pry"

string = "A string"
puts "Does our string, #{string}, respond to to_ary?"
puts string.respond_to?(:to_ary).to_s + "\n..."
puts "Does our string, #{string}, respond to to_a?"
puts string.respond_to?(:to_a).to_s + "\n..."
puts "Here is the top-level method, Array, when called on our string:"
puts Array(string).to_s + "\n..."
puts "Now we will define a singleton method, to_a, for our string\n..."
def string.to_a
  split(//)
end
puts "Once more, here is the top-level method, Array, when called on our string:"
print Array(string)
print "\n"

require "pry"

name = "David A. Black"

if m = /la/.match(name)
  puts "There's a match!"
  print "Here's the unmatched beginning of the string: "
  puts m.pre_match
  print "Here's the unmatched end of the string: "
  puts m.post_match
else
  puts "There is no match"
end

binding.pry

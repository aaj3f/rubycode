obj = Object.new
puts "The id of the obj is #{obj.object_id}."
str = "Strings are objects too, and this is a string!"
puts str
puts "The id of the string object str is #{str.object_id}."
puts "Andrew is curious, is the id of the str object still the same... #{str.object_id}..."
puts str
puts "What about now... #{str.object_id}."

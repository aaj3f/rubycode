obj = Object.new

if obj.respond_to?("talk")
  obj.talk
else
  puts "The object doesn't understand that message."
end

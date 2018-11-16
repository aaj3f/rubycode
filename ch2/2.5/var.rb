require 'pry'

def change_object
  str = "Hello"
  abc = str
  puts "Now str = #{str} and abc = #{abc}"
  str.replace("Goodbye")
  puts "After replacing the String object with a different value, str = #{str} and abc = #{abc}."
end

def change_reference
  str = "Hello"
  abc = str
  puts "Now str = #{str} and abc = #{abc}"
  str = "Goodbye"
  puts "After reassigning the reference/variable str, str = #{str} and abc = #{abc}."
end

binding.pry

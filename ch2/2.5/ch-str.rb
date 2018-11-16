require 'pry'

def change_string(str)
  str.replace("Changed string content!")
end

s = "Original String"

binding.pry

# sending the string `s` to the method alone will change it
# sending the string with the .dup method will duplicate the object
# for the method, and will therefore protect the original object
# You can also call .freeze on an object (or reference to that object)
# which will permanently prevent it from undergoing change
# Finally, .clone is like .dup, except that
# if you .clone a frozen object, the object will also be frozen
# whereas if you .dup a frozen object, the duplicate will NOT be frozen

require "pry"

class Array
  def my_each
    counter = 0
    until counter == size
      yield(self[counter])
      counter += 1
    end
    self
  end
end


binding.pry

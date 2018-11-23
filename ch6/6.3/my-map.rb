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

  def my_map
    acc = []
    my_each { |x| acc << yield(x) }
    acc
  end
end

array = ["Andrew", "Alan", "Johnson"]

binding.pry

require "pry"

class Integer
  def my_times
    n = 0
    until n == self
      yield(n + 1)
      n += 1
    end
    self
  end
end

binding.pry

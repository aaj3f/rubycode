require "pry"

class C
  def set_v
    @v = "I am an instance variale and I belong to any instance"
  end

  def show_var
    puts @v
  end

  def self.set_v
    @v = "I am a class variable and I belong to C."
  end
end

binding.pry

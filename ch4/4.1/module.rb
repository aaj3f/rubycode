require 'pry'

module MyFirstModule
  def ruby_version
    system("ruby -v")
  end
end

# binding.pry

class ModuleTester
  include MyFristModule
end

binding.pry

require "pry"

$gvar = "I'm a global variable"

class C
  def examine_global
    $gvar
  end
end

binding.pry

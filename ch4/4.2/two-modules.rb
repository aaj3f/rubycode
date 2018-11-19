require 'pry'

module M
  def report
    puts "'report' method from module M"
  end
end
module N
  def report
    puts "'report' method from Module N"
  end
end
class C
  include M
  include N
end

binding.pry

require "pry"

class Painting
  include Comparable
  attr_reader :price
  def initialize(price)
    @price = price
  end
  def to_s
    "My price is #{price}."
  end
  def <=>(other_painting)
    self.price <=> other_painting.price
  end
end

paintings = 5.times.map { Painting.new(rand(100..900)) }

pa1 = paintings[0]
pa2 = paintings[1]
pa3 = paintings[2]

puts "The price of Painting \#1 is #{pa1.price}, and the price of Painting\#2 is #{pa2.price}."
puts pa1 > pa2
puts pa1 < pa2
puts "The price of Painting \#3 is #{pa3.price}."
puts "The price of Painting \#2 is between that of \#1 and \#3: #{pa2.between?(pa1, pa3)}"

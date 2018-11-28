require 'pry'

class Rainbow
  include Enumerable
  def each
    yield "red"
    yield "orange"
    yield "yellow"
    yield "green"
    yield "blue"
    yield "indigo"
    yield "violet"
  end
end

r = Rainbow.new
y_color = r.find { |color| color.start_with?('y') }
# note that there's no need to define `find` as its part of Enumerable, which we've mixed in
puts "The first color starting with 'y' is #{y_color}."

#binding.pry

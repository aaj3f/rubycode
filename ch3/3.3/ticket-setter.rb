require 'pry'

class Ticket
  def initialize(venue, date)
    @venue = venue
    @date = date
    puts "Your ticket is for the show at #{@venue} on #{@date}!"
  end
  def price=(amount)
    if (amount * 100).to_i == amount * 100
      @price = amount
    else
      puts "That ain't real money!"
    end
  end
  def venue
    @venue
  end
  def date
    @date
  end
  def price
    @price
  end
end

tic1 = Ticket.new("Lincoln Theatre", "11-21-18")
print "Ticket Price: "
amount = gets.chomp.to_f
tic1.price = amount
#binding.pry
if tic1.price
  puts "The ticket costs $#{"%.2f" % tic1.price}."
end

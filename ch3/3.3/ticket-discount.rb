require 'pry'

class Ticket
  def initialize(venue)
    @venue = venue
  end
  def price=(amount)
    if (amount.to_f * 100).to_i == amount.to_f * 100
      @price = amount.to_f
    else
      puts "That ain't real money!"
    end
  end
  def date=(date)
    if date.split("-")[0].length == 4 && date.split("-")[1].to_i <= 12 && date.split("-")[2].to_i <= 31
      @date = date
    else
      puts "Please submit the date in the format 'yyyy-mm-dd'."
      return nil
    end
  end
  def discount(percent)
    @price = @price * (100 - percent) / 100
  end
  def venue
    @venue
  end
  def price
    @price
  end
  def date
    @date
  end
end

th = Ticket.new("Town Hall")
th.price = "100"
puts "The ticket for #{th.venue} has been discounted 15% to $#{th.discount(15)}."
# binding.pry

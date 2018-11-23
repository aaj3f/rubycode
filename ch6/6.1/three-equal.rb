require "pry"

class Ticket
  attr_accessor :venue, :date
  def initialize(venue, date)
    self.venue = venue
    self.date = date
  end
  def ===(other_ticket)
    self.venue == other_ticket.venue
  end
end

t1 = Ticket.new("Town Hall", "11-21-2018")
t2 = Ticket.new("Grand Theater", "11-21-2018")
t3 = Ticket.new("Town Hall", "12-25-2018")

puts "Ticket1 is for #{t1.venue}, and so is..."
case t1
when t2
  puts "Ticket2!"
when t3
  puts "Ticket3!"
else
  puts "... well, actually none of them."
end

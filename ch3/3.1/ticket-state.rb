class Ticket
  def initialize(venue, date)
    @venue = venue
    @date = date
    puts "Your ticket is for the show at #{@venue} on #{@date}!"
  end
  def venue
    @venue
  end
  def date
    @date
  end
end

tic1 = Ticket.new("Lincoln Theatre", "11-21-18")
tic2 = Ticket.new("Grand Ol' Opera", "12-25-18")

puts "You have two tickets."
puts "The first is for a #{tic1.venue} event on #{tic1.date}."
puts "The second is for a #{tic2.venue} event on #{tic2.date}."

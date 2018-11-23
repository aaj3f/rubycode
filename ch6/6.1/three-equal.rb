require "pry"

class Ticket
  attr_accessor :venue, :date, :name
  def initialize(name, venue, date)
    self.name = name
    self.venue = venue
    self.date = date
  end
  def ===(other_ticket)
    self.date == other_ticket.date
  end
  class TicketComparer
    def self.compare(name1, *names)
      correct_names = names.select {|n| n === name1 }
      puts "#{name1.name} is for an event on #{name1.date}, and so is..."
      if correct_names == ([] || nil)
        puts "...actually, none of them."
      else
        correct_names.each {|n| puts "#{n.name}!"}
      end
    end
  end
end

t1 = Ticket.new("ticket1", "Town Hall", "11-21-2018")
t2 = Ticket.new("ticket2", "Grand Theater", "11-21-2018")
t3 = Ticket.new("ticket3", "Town Hall", "12-25-2018")

Ticket::TicketComparer.compare(t1, t2, t3)

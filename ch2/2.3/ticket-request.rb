ticket = Object.new

def ticket.date
  "1903-01-02"
end
def ticket.venue
  "Town Hall"
end
def ticket.event
  "Author's reading"
end
def ticket.performer
  "Mark Twain"
end
def ticket.seat
  "Second Balcony, row J, seat 12"
end
def ticket.price                    #1
  5.50
end

print "Information desired: "
request = gets.chomp

if ticket.respond_to?(request)
  puts ticket.__send__(request)
else
  puts "No such information is available."
end

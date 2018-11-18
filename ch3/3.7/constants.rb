require 'pry'

class Ticket
  VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]
  attr_reader :venue, :date
  def initialize(venue, date)
    if VENUES.include?(venue)
      @venue = VENUES
    else
      raise ArgumentError, "Unknown venue #{venue}"
    end
    @date = date
  end
end

binding.pry

require "pry"

class Bid
  include Comparable
  attr_accessor :estimate
  def <=>(other_bid)
    # This could really be shortened to
    # self.estimate <=> other_bid.estimate
    # if we are certain that the value of the instance variable, @estimate
    # will be an Integer or Float, because both of those classes
    # already have access to the <=> method
    if self.estimate < other_bid.estimate
      -1
    elsif self.estimate > other_bid.estimate
      1
    else
      0
    end
  end
end

binding.pry

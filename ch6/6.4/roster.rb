require "pry"

class Roster
  attr_accessor :players
end

class Players
  attr_accessor :name, :position
  def initialize(name, position)
    @name = name
    @position = position
  end
end

johnson = Players.new("Andrew Johnson", "Forward")
wolters = Players.new("Nick Wolters", "Center")
r1 = Roster.new
r1.players = [johnson, wolters]

# binding.pry

if r1.players.first.name == "Andrew Johnson"
  puts "This will print, not only because the value is correct, but because the above methods will call on proper objects"
end

r2 = Roster.new
#if r2.players.first.name == "Andrew Johnson"
  #puts "This will raise an exception, because r2.players will evaluate to nil, on which we canno call the first method"
#end
if r2.players&.first&.name == "Andrew Johnson"
  puts "This will not print, but the good news is that it will also not raise a NilClass error exception because we at least ran it with safe navigation operators"
end

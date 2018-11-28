require "pry"

state_hash = {
  "Connecticut" => "CT",
  "Delaware" => "DE",
  "New Jersey" => "NJ",
  "Virginia" => "VA"
}

loop do
  print "Enter the name of the state: "
  state = gets.chomp
  break if (state == "exit")
  abbr = state_hash[state]
  puts "The abbreviation is #{abbr}!"
end

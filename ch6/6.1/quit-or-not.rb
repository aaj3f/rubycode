require "pry"

def quit_or_not
  print "Exit the program? (yes or no): "
  answer = gets.chomp
  case answer
  when "yes"
    puts "Good-bye!"
    exit
  when "no"
    puts "Ok, we'll continue then..."
  else
    puts "Girl, I said type 'yes' or 'no' and what did you type... #{answer}???"
  end
  puts "Continuing with program ...\n" + "...\n" + "..."
  quit_or_not
end
quit_or_not

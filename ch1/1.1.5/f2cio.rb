puts "Reading Fahrenheit temperature value from data file..."
fahrenheit = File.read("temp.dat").to_i
puts "Fahrenheit temperature is " + fahrenheit.to_s
celsius = (fahrenheit - 32) * 5 / 9
puts "Celsius temperature is " + celsius.to_s
puts "Saving result to output file 'temp.out'"
cs = File.new("temp.out", "w")
cs.puts celsius
cs.close

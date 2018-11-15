puts "Reading Celsius temperature value from data file..."
celsius = File.read("temp.dat")
fahrenheit = (celsius.to_i * 9 / 5) + 32
puts "Celsius temperature is " + celsius
puts "Fahrenheit temperature is " + fahrenheit.to_s
puts "Saving result to output file 'temp.out'"
fh = File.new("temp.out", "w")
fh.puts fahrenheit.to_i
fh.close

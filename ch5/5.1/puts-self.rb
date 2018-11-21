module M
  puts "Just started module M:"
  puts self
  class C
    puts "Nested class M::C:"
    puts self
  end
  puts "Back in the outer level of M:"
  puts self
end

puts "Back to a top-level self object:"
puts self

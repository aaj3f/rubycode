class MyNewException < Exception
end
begin
  puts "About to raise the new exception..."
  raise MyNewException
rescue MyNewException => e
  puts "Just raised the new nexception: #{e}"
end

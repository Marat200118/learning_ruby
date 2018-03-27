print "Get me string: "
user_input = gets.chomp
user_input .downcase!

if user_input.include? "s"
user_input.gsub!(/s/, "th")
  else
  print "Nothing to do here"
end
puts "Your string is: #{user_input}"

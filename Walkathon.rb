puts "Welcome to Heather's Walk-a-Thon tracker!"
puts "Our goal is to raise money (duh)."

#Earning goal
puts "User, please enter the earning goal for this event."
goal_event = gets.chomp.to_i
puts "Earning goal: #{goal_event} dollars"

#amount earned per lap
puts "User, please enter the amount earned per lap."
earned_lap = gets.chomp.to_f
puts "Earning goal per lap: #{earned_lap} dollars"

#number of laps completed for 5 people
puts "User, please enter the number of laps completed by your 5 team members"

#collect user input using until loop
earned = Array.new
j=1
until j==6 do
  puts "Team member #{j}: "
  laps_each = gets.chomp.to_i
  earned << laps_each * earned_lap
  puts "Earned: #{earned.last} dollars"
  j+=1
end

#Check earned array
#puts earned.max

#Print Totals
puts "=================================="

#Use conditional statement to determine highest earning walker
if earned[0] == earned.max
  print "Highest earning walker: Walker #1 \n"
elsif earned[1] == earned.max
  print "Highest earning walker: Walker #2 \n"
elsif earned[2] == earned.max
  print "Highest earning walker: Walker #3 \n"
elsif earned[3] == earned.max
  print "Highest earning walker: Walker #4 \n"
else
  print "Highest earning walker: walker #5 \n"
end

#Sum floats in the earned array using .inject
puts "Total amount earned: #{earned.inject(:+)}"

puts "And the goal..."
#Use conditional statement to inform user if goal was exceeded || met || not met.
if earned.inject(:+) > goal_event
  puts "YES! Y'all exceeded your goal!!! :-) "
elsif earned.inject(:+) == goal_event
  puts "YES! Y'all met your goal! :-) "
else
  puts "Oh no! You didn't quite reach your goal. Better luck next time :-( "
end

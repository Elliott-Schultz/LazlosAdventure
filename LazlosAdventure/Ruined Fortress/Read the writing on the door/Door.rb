choice = gets
choice = choice.chomp


answer = false
if choice == "Lantern" or choice == "lantern" or choice == "Lanterns" or choice == "lanterns"
  answer = true
else
  puts "Wrong answer"
  choice = gets
  choice = choice.chomp
  if choice == "Lantern" or choice == "lantern" or choice == "Lanterns" or choice == "lanterns"
    answer = true
  else
    puts "Wrong answer"
    choice = gets
    choice = choice.chomp
    if choice == "Lantern" or choice == "lantern" or choice == "Lanterns" or choice == "lanterns"
      answer = true
    end
  end
end

if answer == false
  puts ("The door opens slowly and you peer inside. You are fairly certain that you answered incorrectly, but as long as your journey continues you are not worried about how the door opened. As soon as you walk through the doorway, the lanterns from outside fall to the ground causing the ash below your feet to catche fire. You try and escape the fortress, but the door slams shut, trapping you inside. You slowly burn to ash, your last thoughts being how your family would feel when you didn't return home.")
else
  $player1.addIntelligence(4)
  puts ("You by solving this riddle, you feel more knowledgable. Maybe that unlocked something in your Spells book. You have no time for that now and decide to check later.")
  Dir.chdir("Enter")
  f = File.open("entrance.txt")
  puts f.read
  require "./entrance.rb"
  Dir.chdir("..")
end
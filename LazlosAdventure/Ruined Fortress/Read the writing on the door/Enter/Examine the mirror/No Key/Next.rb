choice = gets
choice = choice.chomp

if choice == "1"
  Dir.chdir("../../Open the door left of the entrance")
  f = File.open("leftDoor.txt", "r")
  puts f.read
  load "./leftDoor.rb"
elsif choice == "2"
  Dir.chdir("../../Open the door right of the entrance")
  f = File.open("rightDoor.txt", "r")
  puts f.read
  load "./rightDoor.rb"
end
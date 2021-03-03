choice = gets
choice = choice.chomp

if choice == "1" or choice == "2" or choice == "3"
  if choice == "1"
    Dir.chdir("Examine the mirror")
    f = File.open("Mirror.txt", "r")
    puts f.read
    load "./Mirror.rb"
  elsif choice == "2"
    Dir.chdir("Open the door left of the entrance")
    f = File.open("leftDoor.txt", "r")
    puts f.read
    load "./leftDoor.rb"
  elsif choice == "3"
    Dir.chdir("Open the door right of the entrance")
    f = File.open("rightDoor.txt", "r")
    puts f.read
    load "./rightDoor.rb"
  end
end

if choice == "Leave the fortress"
  Dir.chdir("../../")
  j = File.open("endFortress.txt", "r")
  puts j.read
end
choice = gets
choice = choice.chomp

if choice == "1" or choice == "2"
  if choice == "1"
    Dir.chdir("Climb the wall")
    g = File.open("Climb.txt", "r")
    puts g.read
    require "./Climb.rb"
  end
  Dir.chdir("Read the writing on the door")
  f = File.open("Door.txt", "r")
  puts f.read
  require "./Door.rb"
  Dir.chdir("..")
end


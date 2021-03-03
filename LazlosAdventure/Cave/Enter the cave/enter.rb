choice = gets
choice = choice.chomp

if choice == "1"
  Dir.chdir("Examine the holes in the wall")
  f = File.open("examine.txt", "r")
  puts f.read
  $player1.addItem("Broad head")
  require "./examine.rb"
  Dir.chdir("Continue")
  g = File.open("continue.txt", "r")
  puts g.read
  require "./continue.rb"
elsif choice == "2"
  Dir.chdir("Continue")
  f = File.open("continue.txt", "r")
  puts f.read
  require "./continue.rb"
end
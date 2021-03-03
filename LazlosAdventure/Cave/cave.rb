f = File.open("cave.txt", "r")
puts f.read

choice = gets
choice = choice.chomp

if choice == "1"
  Dir.chdir("Enter the cave")
  g = File.open("enter.txt", "r")
  puts g.read
  require "./enter.rb"
elsif choice == "2"
  Dir.chdir("../Grakor's Lair")
  g = File.open("enterLair.txt", "r")
  puts g.read
  require "./enterLair.rb"
end
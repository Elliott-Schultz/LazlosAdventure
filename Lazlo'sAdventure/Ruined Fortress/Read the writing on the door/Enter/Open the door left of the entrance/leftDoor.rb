

choice = gets
choice = choice.chomp

if choice == "1"
  f = File.open("enter2.txt", "r")
  puts f.read
  Dir.chdir("..")
  load "./entrance.rb"

elsif choice == "2"
  Dir.chdir("Examine the plants")
  f = File.open("plants.txt")
  puts f.read
  require "./plants.rb"
  Dir.chdir("..")
  g = File.open("enter2.txt", "r")
  puts g.read
  load "./entrance.rb"
end
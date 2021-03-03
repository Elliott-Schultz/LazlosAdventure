choice = gets
choice = choice.chomp

if choice == "1"
  Dir.chdir("Reach into the hole")
  f = File.open("Reach.txt", "r")
  puts f.read
  require "./Reach.rb"
  Dir.chdir("../../../../../../")
  g = File.open("endFortress.txt", "r")
  puts g.read
  Dir.chdir("Troll")
  h = File.open("trollFight.txt", "r")
  puts h.read
  require "./troll.rb"
elsif choice == "2"
  Dir.chdir("../../../../../../")
  g = File.open("endFortress.txt", "r")
  puts g.read
  Dir.chdir("Troll")
  h = File.open("trollFight.txt", "r")
  puts h.read
  require "./troll.rb"
end
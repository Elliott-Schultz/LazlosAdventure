$player1.addItem("Decimator Piece 1")
$player1.removeItem

choice = gets
choice = choice.chomp

if choice == "1"
  Dir.chdir("Move the chest")
  f = File.open("Move.txt", "r")
  puts f.read
  require "./Move.rb"
elsif choice == "2"
  Dir.chdir("../../../../../")
  f = File.open("endFortress.txt", "r")
  puts f.read
  Dir.chdir("Troll")
  g = File.open("trollFight.txt", "r")
  puts g.read
  require "./troll.rb"
end
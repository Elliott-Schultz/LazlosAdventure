$player1.addItem("Fletchings")

Dir.chdir("../../../../")
f = File.open("endCave.txt", "r")
puts f.read
$player1.addItem("Shaft")
Dir.chdir("Grakor's Lair")
g = File.open("enterLair.txt", "r")
puts g.read
require "./enterLair.rb"

$player1.addItem("Fletchings")

Dir.chdir("/home/runner")
f = File.open("endCave.txt", "r")
puts f.read
$player1.addItem("Shaft")
Dir.chdir("/home/runner/Grakor's Lair")
g = File.open("enterLair.txt", "r")
puts g.read
require "./enterLair.rb"

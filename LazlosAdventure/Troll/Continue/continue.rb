answer = gets
answer = answer.chomp

if answer == ""
  Dir.chdir("Open")
  f = File.open("open.txt", "r")
  puts f.read
  $player1.restoreHealth
  require "./open.rb"
  Dir.chdir("../../")
  g = File.open("endTroll.txt", "r")
  puts g.read
  Dir.chdir("Cave")
  require "./cave.rb"
else
  f = File.open("../Troll/Continue/death.txt", "r")
  puts f.read
end
answer = gets
answer = answer.chomp

if answer == ""
  Dir.chdir("Open")
  f = File.open("open.txt", "r")
  puts f.read
  $player1.restoreHealth
  require "./open.rb"
  Dir.chdir("/home/runner")
  g = File.open("endTroll.txt", "r")
  puts g.read
  Dir.chdir("/home/runner/Cave")
  require "./cave.rb"
else
  f = File.open("/home/runner/Troll/Continue/death.txt", "r")
  puts f.read
end
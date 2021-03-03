=begin
Elliott Schultz
This is a text based RPG with puzzles
It works by giving the user a series of options and the user inputs them into the command line. There are also puzzles where the user will also have to input their answer. As well as this, there are two fights in the game, where the user will have options to attack, dodge, and sometimes heal. The storyline is based around File IO, with each option opening new directories and reading files and executing new programs. Each fight is possible using conditional logic and classes. There are three classes. One for the player, another for a troll, and another for a dragon. Using a global variable, I am able to access these classes rom anywhere in the file system and change their attributes, such as health and power.
Some things that were challenging when creating this were figuring out how to create an infinite file loading loop and figuring out when to use a full path for a directory or file. It took a long time to figure out how to do the infinite file loading, but it was a quite simple fix, where I had to switch from requiring a file to loading it. I also figured out that when wanting to load a file within or ahead of your current directory, you can use a partial path, but when tryign to load directories or files far bac in your file system, you need to use its full path to avoid mistakes.
=end
def startGame
  f = File.open('Welcome.txt')
  puts f.read  
end

startGame

require "/home/runner/PlayerClass.rb"
require "/home/runner/trollClass.rb"
require "/home/runner/dragonClass.rb"

choice = gets
choice = choice.chomp


if choice == '1'
  Dir.chdir("Home")
  f = (File.open("Choice.txt", "r"))
  puts f.read
  require "./Home.rb"
elsif choice == '2'
  Dir.chdir("Library")
  f = (File.open("Choice.txt", "r"))
  puts f.read
  require "./Library.rb"
end

if Dir.pwd != "/home/runner/Home/Fields"
  g = File.open("endBeginning.txt", "r")
  puts g.read
  puts $player1.addPower(5)
  Dir.chdir("Ruined Fortress")
  f = File.open("beginAdventure.txt", "r")
  puts f.read
  require "./ruinedFortress.rb"
end


=begin
$player1.addPower(15)
Dir.chdir("/home/runner/Grakor's Lair/Create")
require "./create.rb"
=end
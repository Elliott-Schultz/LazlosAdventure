choice = gets
choice = choice.chomp

if File.directory?(choice)
  if choice == "1"
    Dir.chdir("A Brief History of Champions Past")
    f = File.open("Choice.txt", "r")
    puts f.read
    require "./Choice.rb"
    puts ("Intrigued from your previous findings, you decide to take a look at your other book")
    Dir.chdir("Enchantments and Spells: 101")
    g = File.open("Choice.txt")
    puts g.read
    require "./Choice.rb" 
  elsif choice == "2"
    Dir.chdir("Enchantments and Spells: 101")
    f = File.open("Choice.txt", "r")
    puts f.read
    require "./Choice.rb"
    puts ("Intrigued from your previous findings, you decide to take a look at your other book")
    Dir.chdir("A Brief History of Champions Past")
    g = File.open("Choice.txt")
    puts g.read
    require "./Choice.rb"
  end 
end

puts $player1.addIntelligence(1)

f = File.open("Library_Ending.txt")
puts f.read

Dir.chdir("..")


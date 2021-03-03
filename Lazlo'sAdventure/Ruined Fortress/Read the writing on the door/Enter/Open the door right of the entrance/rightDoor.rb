choice = gets
choice = choice.chomp

if choice == "1"
  Dir.chdir("..")
  f = File.open("enter2.txt", "r")
  puts f.read
  load "./entrance.rb"
elsif choice == "2"
  puts ("You rotate the first dial to:")
  dial1 = gets
  dial1 = dial1.chomp
  puts ("You rotate the second dial to:")
  dial2 = gets
  dial2 = dial2.chomp
  puts ("You rotate the third dial to:")
  dial3 = gets
  dial3 = dial3.chomp
  puts ("You rotate the fourth dial to:")
  dial4 = gets
  dial4 = dial4.chomp
  puts ("You rotate the fifth dial to:")
  dial5 = gets
  dial5 = dial5.chomp
  
  if (dial1 + dial2 + dial3 + dial4 + dial5) == "LAZLO" or (dial1 + dial2 + dial3 + dial4 + dial5) == "lazlo" or (dial1 + dial2 + dial3 + dial4 + dial5) == "Lazlo"
    Dir.chdir("Open")
    f = File.open("Open.txt", "r")
    puts f.read
    $player1.addItem("Key")
    load "./Open.rb"
    Dir.chdir("..")
    g = File.open("enter3.txt", "r")
    puts g.read
    load "./entrance.rb"
  else
    f = File.open("kill.txt", "r")
    puts f.read
  end
end


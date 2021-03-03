endFight = false
until endFight == true
  puts ("You can choose to Attack or Dodge")
  move = gets
  move = move.chomp
  if move == "Solar Flame"
    puts ("You remember that the spell you learned earlier can be used to attack enemies. You also remember that trolls' primary weakness is sunlight, so using the spell Solar Flame seems to be a good idea. You quickly perform the spell and a bright light engulfs the troll forcing you to look away. Once the light dissipates, you glance back at the troll, who is now completely made of stone.")
    endFight = true
  elsif move == "Attack"
    $player1.attack($troll)
      if $troll.health <= 0
        endFight = true
      end
    if endFight == false
      $troll.attack($player1)
      if $player1.health <= 0
        endFight = true
      end
    end
  elsif move == "Dodge"
    r = rand(2)
    if r == 1
      puts ("You attempt to dodge, but you failed to get out of the way in time.")
      $troll.attack($player1)
      if $player1.health <= 0
        endFight = true
      end
    else
      puts ("Your dodge succeeded and you were able to get out of the way of the troll's attack.")
    end
  end
end

if $player1.health > 0
  $player1.addPower(5)
  f = File.open("win.txt", "r")
  puts f.read
  choice = gets
  choice = choice.chomp
  if choice == "1"
    Dir.chdir("Continue")
    f = File.open("continue.txt", "r")
    puts f.read
    $player1.addPower(10)
    require "./continue.rb"
  elsif choice == "2"
    f = File.open("Leave.txt", "r")
    puts f.read
  end
else
  puts ("The End.")
end
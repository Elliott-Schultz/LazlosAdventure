endBattle = false
turn = 1
restore = 2
until endBattle == true
  if turn > 1 and restore >= 1 and $player1.health < 50
    puts("You can Attack, Dodge, or Heal")
    choice = gets
    choice = choice.chomp
    if choice == "Heal"
      $player1.restoreHealth
      restore -= 1
      $Grakor.attack($player1)
      if $player1.health <= 0
        endBattle = true
      end
    elsif choice == "Attack"
      $player1.attack($Grakor)
      if $Grakor.health <= 0
        endBattle = true
      else
        $Grakor.attack($player1)
        if $player1.health <= 0
          endBattle = true
        end
      end
    elsif choice == "Dodge"
      n = rand(2)
      if n == 0
        puts("Grakor attacked, but you were able to dodge in time")
      else
        $Grakor.attack($player1)
        if $player1.health <= 0
          endBattle = true
        end
      end
    elsif choice == "Resting Power"
      puts("You remember that you have a spell that can put enemies to sleep, so you cast Resting Power on the dragon. It quickly falls asleep, as you had before.")
      endBattle = true
    end
  else
    puts("You can Attack, or Dodge")
    choice = gets
    choice = choice.chomp
    if choice == "Attack"
      $player1.attack($Grakor)
      if $Grakor.health <= 0
        endBattle = true
      else
        $Grakor.attack($player1)
        if $player1.health <= 0
          endBattle = true
        end
      end
    elsif choice == "Dodge"
      n = rand(2)
      if n == 0
        puts("Grakor attacked, but you were able to dodge in time")
      else
        $Grakor.attack($player1)
        if $player1.health <= 0
          endBattle = true
        end
      end
    elsif choice == "Resting Power"
      puts("You remember that you have a spell that can put enemies to sleep, so you cast Resting Power on the dragon. It quickly falls asleep, as you had before.")
      endBattle = true
    end
    turn += 1
  end
end

if $player1.health > 0
  Dir.chdir("Win")
  f = File.open("win.txt", "r")
  puts f.read
else
  Dir.chdir("Lose")
  f = File.open("lose.txt", "r")
end
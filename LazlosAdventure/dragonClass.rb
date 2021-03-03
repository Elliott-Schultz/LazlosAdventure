class Dragon

  def initialize
    @health = 250
    @power = 50.0
  end

  attr_accessor :health, :power

  def attack(other)
    n = rand
    m = (@power * rand).to_i
    if m >= 30
      puts("The dragon let out a mighty roar and then spit fire towards use decreasing your health by #{m}")
    elsif m < 30 and m > 0
      puts("The dragon swipes at you with one of its razor sharp claws and decreases your health by #{m}")
    elsif m == 0
      puts("The dragon swings a claw at you, but misses.")
    end
    other.decreaseHealth(m)
  end

  def decreaseHealth(n)
    @health -= n
    puts ("Grakor's health was reduced to #{self.health}")
  end
end

$Grakor = Dragon.new

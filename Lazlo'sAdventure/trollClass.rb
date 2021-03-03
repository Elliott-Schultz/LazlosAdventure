class Troll
  attr_accessor :health, :power

  def initialize()
    @power = 25.0
    @health = 100
  end

  def power
    return @power
  end

  def health
    return @health
  end

  def attack(other)
    n = rand
    m = (n * @power).to_i 
    if m == 0
      puts ("The troll attacks and misses you.")
    else
      puts ("The troll attacks and hits you for #{m} health.")
    end
    other.decreaseHealth(m)
  end

  def decreaseHealth(n)
    if n < @health
      @health -= n
      puts ("The troll's health was reduced by #{n}")
    else
      @health = 0
      puts ("You swing your sword as hard as you can at the troll's neck. You don't feel your sword hit anything and assume you missed your target, but when you look back at the troll, its head is missing from it's body.")
    end
  end
end

$troll = Troll.new
class Player
  def initialize(name = 'Lazlo')
    @name = name
    @power = 10
    @intelligence = 10
    @health = 50
    @inventory = []
  end

  attr_accessor :power, :name, :intelligence, :health, :inventory

  def inventory
    return @inventory
  end

  def addItem(item)
    @inventory << item
    puts (item + " was added to your inventory")
  end

  def removeItem
    @inventory.slice!(0)
  end

  def power
    return ("Your power is currently at " + @power.to_s)
  end

  def name
    return ("Your name is " + @name.to_s)
  end

  def intelligence
    return ("Your intelligence is currently at " + @intelligence.to_s)
  end

  def health
    return @health
  end

  def healthUpdate
    return ("Your health is currently " + @health.to_s)
  end

  def addPower(n)
    @power += n
    return ("Your power was raised to  " + @power.to_s)
  end

  def addIntelligence(n)
    @intelligence += n
    return ("Your intelligence was raised to " + @intelligence.to_s)
  end

  def decreaseHealth(n)
    if n < @health
      @health -= n
      return ("Your health was decrease to " + @health.to_s)
    else 
      @health = 0
      puts ("The last attack did serious damage to your body and you fall to the ground, lifeless.")
    end
  end

  def restoreHealth
    @health = 50
    return ("Your health was restored to " + @health.to_s)
  end

  def attack(other)
    n = rand(1..4)
    m = (n * @power)
    puts ("You attack and do #{m} damage")
    other.decreaseHealth(m)
  end
end

$player1 = Player.new
class Player

  def play_turn(warrior)
    @health ||= 20
    if warrior.feel.enemy?
      warrior.attack!
    elsif warrior.feel.captive?
      warrior.rescue!
    else
      if (warrior.health == 20) or (@health > warrior.health)
        warrior.walk!
      else 
        warrior.rest!
      end
    end
    @health = warrior.health
  end

end

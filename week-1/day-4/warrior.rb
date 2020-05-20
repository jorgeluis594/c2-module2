module Ranks
  PUSHOVER = "Pushover"
  NOVICE = "Novice"
  FIGHTER = "Fighter"
  WARRIOR = "Warrior"
  VETERAN = "Veteran"
  SAGE = "Sage"
  ELITE = "Elite"
  CONQUEROR = "Conqueror"
  CHAMPION = "Champion"
  MASTER = "Master"
  GREATEST = "Greatest"
end
class Warrior
  attr_reader :level, :experience, :rank, :achievements
  def initialize
    @level = 1
    @experience = 100
    @rank = Ranks::PUSHOVER
    @achievements = []
  end

  def battle(enemy_level)
    return "Invalid level" unless enemy_level>0 && enemy_level<=100
    if can_fight?(enemy_level)
      fight!(enemy_level)
      update_level
      message_battle(enemy_level)
    else
      message_battle(enemy_level)
    end
  end

  def training(challenge)
    if can_training?(challenge)
      @achievements << challenge[0]
      @experience+=challenge[1]
      update_level
      challenge[0]
    else
      "Not strong enough"
    end
  end

  private

  def can_fight?(enemy_level)
    @level+5>enemy_level && (calculate_number_rank(@level)>=calculate_number_rank(enemy_level))
  end

  def calculate_number_rank(level)
    ((level+1)/10.to_f).ceil
  end

  def fight!(enemy_level)
    if enemy_level==@level
      @experience+=10
    elsif enemy_level==@level-1
      @experience+=5
    elsif enemy_level>@level
      @experience+=20*(enemy_level-@level)*(enemy_level-@level)
    end
    if @experience>10000
      @experience=10000
    end
  end

  def update_level
    @level = (@experience/100).to_i
    update_rank
  end

  def update_rank
    case calculate_number_rank(@level).to_i
    when 2
      @rank=Ranks::NOVICE
    when 3
      @rank=Ranks::FIGHTER
    when 4
      @rank=Ranks::WARRIOR
    when 5
      @rank=Ranks::VETERAN
    when 6
      @rank=Ranks::SAGE
    when 7
      @rank=Ranks::ELITE
    when 8
      @rank=Ranks::CONQUEROR
    when 9
      @rank=Ranks::CHAMPION
    when 10
      @rank=Ranks::MASTER
    when 11
      @rank=Ranks::GREATEST
    end
  end

  def message_battle(enemy_level)
    if can_fight?(enemy_level)
      if @level>=enemy_level+2
        "Easy fight"
      elsif @level==enemy_level || @level==enemy_level+1
        "A good fight"
      elsif enemy_level>@level
        "An intense fight"
      end
    else
      "You've been defeated"
    end
  end

  def can_training?(challenge)
    @level>=challenge[2]
  end
end

bruce_lee = Warrior.new
bruce_lee.training(["Defeated Chuck Norris", 9000, 2])
p bruce_lee.battle(89)

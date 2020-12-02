class Champions
    attr_accessor :name, :attack, :magic, :defence, :hp, :mp, :movespeed, :armor, :attackrange, :attackdamage, :title, :difficulty, :spellblock
    
    @@all = []

    def initialize (name = nil, title, defence, armor, hp, mp, movespeed, attackrange, attackdamage, spellblock, difficulty, magic, attack)
       @name = name
       @title = title  
       @difficulty = difficulty
       @magic = magic
       @attack = attack
       @attackdamage = attackdamage
       @spellblock = spellblock
       @armor = armor
       @defence = defence
       @hp = hp
       @mp = mp
       @movespeed = movespeed
       @attackrange = attackrange
        @@all << self   
     end

    def self.all
        @@all
    end

end
    
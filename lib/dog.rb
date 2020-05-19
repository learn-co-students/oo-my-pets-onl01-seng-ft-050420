class Dog
  attr_accessor :mood, :owner
  attr_reader :name 
  
  @@all = []
  
  def initialize(name, owner) 
    @name = name 
    @owner = owner
    @mood = "nervous"
    @@all << self
    
  end 
  
  def self.all 
    @@all
    
  end
  
  def change_owner(new_owner)
    @owner = new_owner
  end 
  
  def change_mood
    @mood = "hungry"
  end
  
  
  
end
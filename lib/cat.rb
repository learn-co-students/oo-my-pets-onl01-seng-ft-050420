class Cat
  # code goes here
  
  attr_reader :name, :species
  attr_accessor :owner, :mood
  @@all = []

 
  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @species = "cat"
    @owner = owner
    @@all << self
  end  
  
  def new_owner(owner)
    new_owner = self.Owner.new(owner)
  end
  
  def self.all
    @@all
  end
    

  
end
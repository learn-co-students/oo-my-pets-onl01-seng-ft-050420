class Dog
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
  
  def self.all
    @@all
  end
    

  
end
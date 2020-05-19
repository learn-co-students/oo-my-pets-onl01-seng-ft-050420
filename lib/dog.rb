class Dog
  attr_accessor :owner, :mood 
  attr_reader :name 

  @@dogs = []
  
  def initialize(name, owner=nil)
    @name = name 
    @mood = mood 
    @mood = "nervous"
    @owner = owner 
    @@dogs << self 
  end 

  def self.all 
    @@dogs
  end 


end
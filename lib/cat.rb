class Cat
  attr_accessor :owner, :mood 
  attr_reader :name 

  @@cats = []

  def initialize(name, owner=nil)
    @name = name 
    @owner = owner 
    @mood = mood 
    @mood = "nervous" 
    @@cats << self 
  end 

  def self.all 
    @@cats
  end 

end
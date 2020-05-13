class Dog
  attr_accessor :owner, :mood
  attr_reader :name
  attr_writer
  
  @@all = []
  
  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @@all << self
    @mood = mood
  end
  
  def self.all
    @@all
  end
  
  def self.all
    @@all
  end
  
end
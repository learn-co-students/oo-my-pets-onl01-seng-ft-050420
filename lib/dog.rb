require 'pry'

class Dog
  attr_accessor :owner, :mood
  attr_reader :name
  attr_writer
  
  @@all = []
  
  def initialize(name, owner = nil)
    @name = name
    @owner = owner
    @@all << self
    @mood = "nervous"
  end
  
  def self.all
    @@all
  end
  
  def self.owner
    @owner
  end
  
  def self.mood
    @mood
  end

end
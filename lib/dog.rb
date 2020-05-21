class Dog
 attr_accessor :owner, :mood
 attr_reader :name
 #when reading a book you are not changing it, when you are writing a book it is constantly changing
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
end


#object = Owner.new("Irene")
#Dog.new("lucky", object)
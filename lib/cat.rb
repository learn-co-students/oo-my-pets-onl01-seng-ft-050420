class Cat
  attr_reader :name
  attr_accessor :owner, :mood
  @@all = []
  #returns the value of this variable, gives us the ability to access it in another class
  #def owner
   # @owner
  #end
  #when you use attribute reader it cannot be changed
  #taking in the argument and storing it into the @owner variable
  def owner=(argument)
    @owner = argument
  end
  #allows us to change the information, this is the writer
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
   end

  def self.all
      @@all
  end
  
  def self.count
      @@all.count
  end

end
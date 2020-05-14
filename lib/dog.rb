class Dog
  attr_accessor :owner, :mood
  attr_reader :name
  # code goes here
  @@all =[]
  def initialize(name, owner = @owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@all << self
  end



  def self.all
    @@all
  end


end

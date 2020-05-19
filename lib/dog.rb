class Dog

  @@all = []

  attr_reader :name

  attr_accessor :owner, :mood

  def initialize(name, owner=@owner) #initializes with a name and an Owner
    @name = name #can't change the name because their is no setter after initialize
    @owner = owner #can change the owner because of attr_accessor
    @mood = "nervous" #initializes with nervous mood and can change it later
    @@all << self 
  end

  def self.all
    @@all
  end
end

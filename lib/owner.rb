class Owner
  attr_reader :name, :species

  @@all = []
  # code goes here
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
    @cats = []
    @dogs = []
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def cats
    owned_cats_array = Cat.all.select {|cat| cat.owner == self}
    @cats = owned_cats_array
    @cats
  end

  def dogs
    owned_dog_array = Dog.all.select {|dog| dog.owner == self}
    @dogs = owned_dog_array
    @dogs
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
  end

  def walk_dogs
    #take dog on walk
    #makes instance of dog's mood happy
    self.dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    #feed cat
    #makes instance of cat's mood happy
    self.cats.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    #sell all instance of pets
    #changes mood to nervous
    self.dogs.each {|dog| dog.mood = "nervous"}
    self.cats.each {|cat| cat.mood = "nervous"}
    self.dogs.each {|dog| dog.owner = nil}
    self.cats.each {|cat| cat.owner = nil}
  end

  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end

end

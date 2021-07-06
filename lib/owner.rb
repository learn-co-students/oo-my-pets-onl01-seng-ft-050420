
class Owner
  attr_reader :name, :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
 
  def buy_cat(name)
    cat = Cat.new(name, self)
  end
  
  def buy_dog(name)
    dog = Dog.new(name, self)
  end

  def walk_dogs
    dogs.each {|dog| puts dog.mood = "happy"}
  end
  
  def feed_cats
    cats.select {|cat| puts cat.mood = "happy"}
  end
  
  def sell_pets
    self.cats.each {|x| x.mood = "nervous"}
    self.dogs.each {|x| x.mood = "nervous"}
    self.cats.each {|x| x.owner = nil}
    self.dogs.each {|x| x.owner = nil}
  end
  
  def list_pets
    return "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end

end

   
  
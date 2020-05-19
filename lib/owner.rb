class Owner
  attr_accessor :pets, :mood 
  attr_reader :name, :species 
 

  @@all = []
 
  

  def initialize(name, species = "human")
    @name = name
    @species = species
    @pets = {}
    @@all << self  
  end

  def say_species 
   "I am a #{self.species}."
  end 

  def self.count 
    @@all.size
  end 

  def cats 
    Cat.all.select{|cat| cat.owner == self} 
  end 

  def dogs 
    # keep track of all the dogs in dog class
    # grab all the dogs 
    Dog.all.select{|dog| dog.owner == self}
  end 

  def self.all
    @@all
  end 

  def self.reset_all
    @@all.clear() 
  end 

  def buy_dog(name)
    dog = Dog.new(name)
    dog.owner = self 
    dogs << dog 
  end 

  def buy_cat(name)
    cat = Cat.new(name)
    cat.owner = self 
    cats << self 
  end 

  def walk_dogs
    dogs.each do |dog|
      dog.mood = 'happy'
    end
  end

  def feed_cats
    cats.each do |cat|
      cat.mood = 'happy'
    end
  end

  def list_pets
    "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
  end
  
  def sell_pets 
    self.cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil 
    end 

    self.dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end 
  end 
    
end
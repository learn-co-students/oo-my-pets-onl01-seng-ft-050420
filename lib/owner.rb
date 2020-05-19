class Owner
  
  attr_reader :name, :species
  
  @@all = []
 
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    
    
  end 
  
  def say_species
    "I am a #{@species}." 
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
  
  def cats 
    Cat.all.select { |cat_inst| cat_inst.owner == self }
  end  
  
  
  def dogs 
    
    Dog.all.select { | dog | dog.owner == self }
    
  end
  
  def buy_cat(cat)
    new_cat = Cat.new(cat, self)
    
    
  end
  
  def buy_dog(dog)
    new_dog = Dog.new(dog, self)
    
  end 
  
  
  def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    cats.each do | cat |
      cat.mood = "happy"
    end
  end
  
  
  
  def sell_pets
    dogs.each do |dog|
      dog.mood = "nervous"
    end
    
    cats.each do | cat |
      cat.mood = "nervous"
    end
    
    cats.each do |cat|
      cat.owner = nil
    end
    
    dogs.each do |dog|
      dog.owner = nil
    end
      
  end
  
  
  def list_pets
    dogs_count = dogs.count
    cats_count = cats.count
    "I have #{dogs_count} dog(s), and #{cats_count} cat(s)."
  end
  
end
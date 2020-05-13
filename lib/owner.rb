require 'pry'

class Owner
  attr_accessor  :pets
  attr_reader :species, :name
  attr_writer 
  
  @@all = []
  @pets = {cats: [], dogs: []}
  
  def initialize(name, species = "human")
    @name = name
    @species = species
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
    @cats = Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs
    @dogs = Dog.all.select {|cat| cat.owner == self}
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    cat.owner = self
    pets[:cats] << cat
  end
  
#  def buy_dog(name)
#    dog = Dog.new(name)
#    dog.owner = self
#    pets[:dogs] << dog
#  end
  
  def walk_dogs
    @dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    @cats.each { |cat| cat.mood = "happy"}
  end
  
#  def sell_pets
#    pets.each do |species, animals|
#      animals.each {|animal|  animal.mood = "nervous"}
#    end
#    animals.clear
#  end
  
#  def list_pets
#    ""I have #{@owner.dogs.count} dog(s), and #{@owner.cats.count} cat(s).""
#  end
  
end


#Owner.new()
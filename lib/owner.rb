require 'pry'

class Owner
@@all = []
attr_accessor :dogs, :cats
attr_reader :name, :species
def initialize(name)
@species = "human"
@name = name
@cats = []
@dogs = []
save
end

def save
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
  Cat.all.select {|cat| cat.owner == self}
end

def dogs
  Dog.all.select {|dog| dog.owner == self}
end

def buy_cat(name)
cat = Cat.new(name, self)
@cats << cat
end
def buy_dog(name)
  dog = Dog.new(name, self)
  @dogs << dog
  end

def walk_dogs
  odogs = dogs
  odogs.collect {|dog| dog.mood = "happy"}

end
def feed_cats
  fcats = cats
  fcats.collect {|cat| cat.mood = "happy"}
end

def sell_pets

fcats = cats
fcats.collect {|cat| cat.mood = "nervous"}
fcats.collect {|cat| cat.owner = nil }
odogs = dogs
odogs.collect {|dog| dog.mood = "nervous"}
odogs.collect {|dog| dog.owner = nil }
end

def list_pets
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end

end
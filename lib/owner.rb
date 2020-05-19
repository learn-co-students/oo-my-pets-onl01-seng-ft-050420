require 'pry'

class Owner

  @@all = []

  attr_reader :name, :species

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
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def cats
     Cat.all.select {|p| p.owner == self} #returns all from array that match criteria - .search
         # if p.owner equals self(self is the object of owner)
          #return all those pets into an array
    end

    def dogs
       Dog.all.select {|p| p.owner == self}
      end

    def buy_cat(name)
      Cat.new(name, self)
    end

    def buy_dog(name)
      Dog.new(name, self)
    end

    def walk_dogs
      self.dogs.each {|p| p.mood = "happy"}
    end

    def feed_cats
      self.cats.each {|p| p.mood = "happy"}
    end

    def sell_pets
       self.dogs.each {|p| p.mood = "nervous"}
       self.cats.each {|p| p.mood = "nervous"}
       self.dogs.each {|p| p.owner = nil  }
       self.cats.each {|p| p.owner = nil  }
    end

    def list_pets
        "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
      end
end

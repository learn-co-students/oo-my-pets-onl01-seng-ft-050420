class Owner
  attr_accessor  :cats, :dogs
  attr_reader :species, :name
  attr_writer 
  
  @@all = []
  @@pets = {}
  @cats = []
  @dogs = []
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
#    @@pets << :cats[@cats]
#    @@pets << :dogs[@dogs]
    
#    @cats = Cat.all
#    @dogs = Dog.all
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
    @cats
  end
  
  def dogs
    @dogs
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @cats << name
  end
  
  def buy_dog(name)
    name = Dog.new(name)
    @dogs << name
  end
  
  def walk_dogs
    @dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    @cats.each { |cat| cat.mood = "happy"}
  end
  
  def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
    end
    animals.clear
  end
  
  def list_pets
    "I have #{@cats.count}cat(s) and #{@dogs.count} dog(s)."
  end
  
end


=begin
  def add_song(song)
    @songs << song
    song.artist = self
    song
  end
  
  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end 
  
  def self.find(name)
    self.all.detect {|artist| artist.name == name }
  end
  
  def self.create(name)
    artist = self.new(name)
    artist.name = name
    artist
  end
  
=end
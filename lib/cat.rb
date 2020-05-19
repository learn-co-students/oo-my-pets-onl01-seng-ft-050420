class Cat

  @@all = []

  attr_reader :name

  attr_accessor :owner, :mood
  # it "returnsa a collection of all the cats that belong to the owner" do
  #   cat_1 = Cat.new("Garfield", @owner)
  #   cat_2 = Cat.new("Fido", @owner)
  #   cat_3 = Cat.new("Whiskers", @owner)
  #
  #   expect(@owner.cats[0]).to eq(cat_1)
  #   expect(@owner.cats[1]).to eq(cat_2)
  #   expect(@owner.cats[2]).to eq(cat_3)
  #   expect(@owner.cats.count).to eq(3)

  def initialize(name, owner) #initializes with a name and an Owner obj class
    @name = name #can't change the name because their is no setter after initialize
    @owner = owner #can change the owner because of attr_accessor
    @mood = "nervous" #initializes with nervous mood and can change it later
    @@all << self
  end

  def self.all
    @@all
  end




end

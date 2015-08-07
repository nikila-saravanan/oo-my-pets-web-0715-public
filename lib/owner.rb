class Owner
  # code goes here
  @@owners = []
  
  def self.all 
    @@owners 
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.length
  end

  attr_reader(:species,:all_owners)
  attr_accessor(:name,:pets)

  def initialize(species)
    @species = species
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@owners << self
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    dogs = @pets[:dogs]
    dogs.each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    cats = @pets[:cats]
    cats.each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    fishes = @pets[:fishes]
    fishes.each {|fish| fish.mood = "happy"}
  end

  def sell_pets 
    dogs = @pets[:dogs]
    cats = @pets[:cats]
    fishes = @pets[:fishes]
    dogs.each {|dog| dog.mood = "nervous"}
    cats.each {|cat| cat.mood = "nervous"}
    fishes.each {|fish| fish.mood = "nervous"}
    dogs.clear
    cats.clear
    fishes.clear
  end

  def list_pets
    num_dogs = (@pets[:dogs]).length
    num_cats = (@pets[:cats]).length
    num_fishes = (@pets[:fishes]).length
    "I have #{num_fishes} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end

end
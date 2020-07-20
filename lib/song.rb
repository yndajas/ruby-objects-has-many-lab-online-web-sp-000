class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    binding.pry
    if !@@all.include?(self) {@@all << self}
  end
  
  def self.all
    @@all
  end
  
end
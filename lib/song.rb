class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self if !@@all.include?(self)
  end
  
  def self.all
    @@all
  end
  
end
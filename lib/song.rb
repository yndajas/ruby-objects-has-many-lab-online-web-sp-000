class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    if !(@@all.include?(self)) << self
  end
  
  def self.all
    @@all
  end
  
end
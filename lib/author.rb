class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def add_post(post)
    post.author = self
    post.save
  end
  
  def add_post_by_name(post_name)
    post = Post.new(post_name)
    song.artist = self
    song.save
  end
  
  def self.song_count
    Song.all.length
  end
    
end
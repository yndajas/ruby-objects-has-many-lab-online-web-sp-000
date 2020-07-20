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
    post.artist = self
    post.save
  end
  
  def self.post_count
    Post.all.length
  end
    
end
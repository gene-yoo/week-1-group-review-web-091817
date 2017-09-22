# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

class Photo
  attr_reader :user, :comments
  def initialize
    @comments = []
  end

  def user=(user)
    @user = user
    user.photos << self
  end

  def make_comment(comment)
    new_comment = Comment.new(comment)
    @comments << new_comment
  end
end

class User
  attr_accessor :name, :photos
  def initialize(name)
    @name = name
    @photos = []
  end
end

class Comment
  attr_accessor :text
  @@all = []

  def initialize(text)
    @text = text
    @@all << self
  end

  def self.all
    @@all
  end
end

# --------- ORIGINAL CODE BELOW ----------

photo = Photo.new
user = User.new("Sophie")
photo.user = user
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]


photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]

Comment.all
#=> [<comment1>]

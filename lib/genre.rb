class Genre

  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def songs
    @songs
  end 

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end


  def self.create(name)
    genre = self.new(name)
    genre.save
    genre
  end

  def save
    @@all << self
  end

  def self.find_by_name(name)
    @@all.detect{|genre| genre.name == name}
  end
end

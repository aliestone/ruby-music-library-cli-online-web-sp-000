class Artist

  extend Findable
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self if song.artist == nil
    self.songs << song unless self.songs.include?(song)
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
    artist = self.new(name)
    artist.save
    artist
  end

  def save
    @@all << self
  end

  def genres
    artists.genres
  end


end

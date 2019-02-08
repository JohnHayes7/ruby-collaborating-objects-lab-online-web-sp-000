require "pry"

class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song_name)
    @songs << song_name
  end
  
  def songs
    @songs
  end
  
  def self.all
    @@all
  end
  
  def save
      if !@@all.include?(self)
      @@all << self
      end
  end
  
  def self.create(name)
    artist = self.new(name)
    @@all << artist
  
  # def self.find_or_create_by_name(name)
  #     self.all.detect{|a| a.name == name} || self.new(name).save
  # end
  
  def print_songs
    @songs.each {|i| puts i.name}
  end
  
  
  
  
end
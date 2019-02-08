require "pry"

class Song 
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    new_song = self.new(name)
    
  end
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_filename(name)
    self.artist = artist
  
  
  
end
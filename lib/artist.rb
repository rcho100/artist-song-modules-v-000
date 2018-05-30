require 'pry'

class Artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super
    @songs = []
  end
  #this method has been refactored and has the 'super' keyword to tell
  #our `Artist`'s `.initialize` method to use the code in the `Memorable::InstanceMethods` module's `.initialize` method
  #*and* also to use any additional code in the `Artist`'s `.initialize` method.

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end
  #this method has been refactored

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
  #this method has been refactored
end

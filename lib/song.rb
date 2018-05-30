require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end

  # def initialize
  #   self.class.all << self
  # end
  #this method has been refactored

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end
  #this method has been refactored

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
  #this method has been refactored
end

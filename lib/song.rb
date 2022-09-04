require 'pry'
require_relative './concerns/findable'
require_relative './concerns/paramable'
require_relative './concerns/memorable'

class Song

  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  include Paramable::InstanceMethods
  extend Findable::ClassMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []
  def self.all
    @@songs
  end

  

  def artist=(artist)
    @artist = artist
  end
end
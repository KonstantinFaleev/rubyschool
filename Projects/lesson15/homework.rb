
class Artist
  attr_reader :name
  attr_reader :albums

  def initialize name
    @name = name
    @albums = []
  end

  def add_album album
    @albums << album
  end
end

class Album
  attr_reader :name
  attr_reader :songs

  def initialize name
    @name = name
    @songs = []
  end

  def add_song song
    @songs << song
  end
end

class Song
  attr_reader :name
  attr_reader :duration

  def initialize name, duration
    @name = name
    @duration = duration
  end
end

artist = Artist.new 'Metalica'
album1 = Album.new 'One'
album2 = Album.new 'Two'
artist.add_album album1
artist.add_album album2


song1 = Song.new 'The show must go on 1', 6
song2 = Song.new 'The show must go on 2', 7
song3 = Song.new 'The show must go on 3', 8

album.add_song song1
album.add_song song2
album.add_song song3

puts album.songs[1].name

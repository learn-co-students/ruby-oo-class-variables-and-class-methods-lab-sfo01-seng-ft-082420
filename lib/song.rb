require 'pry'
class Song
    #attr_reader
    #attr_writer
    attr_accessor :name, :artist, :genre

    #@@all = []
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        #@@all << self
        @@count += 1
        @@genres << genre
        @@artists << artist
        #binding.pry
    end

    # def self.all
    #     @@all
    # end

    def self.count
        @@count
    end

    def self.genres
        genres = @@genres.uniq
        genres
        #binding.pry
    end

    def self.artists
        artists = @@artists.uniq
        artists
    end

    def self.genre_count
        g_hash = {}
        g_hash.default = 0
        @@genres.each do |genre|
          g_hash[genre] += 1
        end
        g_hash
    end

    def self.artist_count
        a_hash = {}
        a_hash.default = 0
        @@artists.each do |artist|
          a_hash[artist] += 1
        end
        a_hash
    end
end

#binding.pry
0

class Song
    attr_accessor :name, :genre, :artist

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << self.artist
        @@genres << self.genre
        @@count += 1
    end
   
    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    ##def count(var)
      #i know that i am repeating myself here btwn .artist_count and .self_count 
        #i know that i need to abstract it but i can't figure out how to get count logic to take in any class variable from the class  

 

    def self.artist_count
            artist_count = {}
            @@artists.each do |artist|      #i would want to interpolate at the beginning of the line
                if artist_count[artist] 
                    artist_count[artist] += 1
                else
                    artist_count[artist] = 1
                end
            end
            artist_count
    end

      def self.genre_count
            genre_count = {}
            @@genres.each do |genre|      #i would want to interpolate at the beginning of the line
                if genre_count[genre] 
                    genre_count[genre] += 1
                else
                    genre_count[genre] = 1
                end
            end
            genre_count
    end


    
    def self.count
         @@count 
    end
end

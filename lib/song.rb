class Song

    @@count = 0
    @@genres= []
    @@artists = []
    
    #setters/getters
    attr_accessor :name, :genre, :artist

    def initialize(name, artist, genre)
        @genre = genre
        @artist = artist
        @name = name
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        return @@count
    end

    def self.genres
        return @@genres.uniq
    end
    
    def self.artists
        return @@artists.uniq
    end

    def self.artist_count
        artists_hash = {}
        counter = 1
        self.artists.sort.each do |artist|
            artists_hash[artist] ||= artist
            artists_hash[artist] = counter
            counter += 1
        end
        artists_hash
    end
    def self.genre_count
        genre_hash = {}
        counter = 1
        self.genres.sort.each do |genre|
            genre_hash[genre] ||= genre
            genre_hash[genre] = counter
            counter += 1
        end
        genre_hash
    end
end

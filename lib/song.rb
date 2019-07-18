class Song
  @@artists = []
  @@count = 0
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
     @@genres.reduce({}) do |memo, gen|
        if memo.keys.include? gen
            memo[gen] += 1
        else
            memo[gen] = 1
        end
     memo
     end
    end


  def self.artist_count
    @@artists.reduce({}) do |memo, gen|
      if memo.keys.include? gen
        memo[gen] += 1
      else
        memo[gen] = 1
      end
      memo
    end
  end
end


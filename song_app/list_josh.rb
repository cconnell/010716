# create list class
# songs can be added to the list with a add_song method
# play method, play each song in the list
# shuffle method, plays each song in the list, in a random order
#   mix up order
#   then play each song
# duration method - returns the sum total of all the secds in the list
#   summing up all durations
#   returning total

class List
  
  attr_reader :names, :songs

  def initialize(name, songs)
    @name = name
    @songs = []
  end
  
  def add_new(new_song)
    @songs << new_song 
  end

  def play(songs = @songs)
    songs.each { |song| song.play }
  end

  def shuffle
    shuffled_list = @songs.shuffle
    play(shuffled_list)
  end

  def duration
    total_duration = 0
    @songs.each do |song|
      total_duration += song.duration
    end
      total_duration
    end
end



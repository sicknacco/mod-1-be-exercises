class Curator
  attr_reader :photographs,
              :artists

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photo)
    @photographs << photo
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    # @artists.find {|artist| artist.id == id}
    @artists.find.each do |artist|
      artist.id == id
    end
  end

  def photographs_by_artist(artist)
    @photographs.find_all do |photograph|
      @artist.id == photograph.artist_id
    end
  end
end 
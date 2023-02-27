require 'spec_helper'

RSpec.describe do
  before(:each) do
    @curator = Curator.new
  end

  it 'exists' do
    expect(@curator).to be_a Curator
  end

  it 'begins with empty photograph array' do
    expect(@curator.photographs).to eq([])
  end

  it 'can add photographs to array' do
    photo_1 = Photograph.new({
      id: "1",      
      name: "Rue Mouffetard, Paris (Boy with Bottles)",      
      artist_id: "1",      
      year: "1954"      
    })
    photo_2 = Photograph.new({
      id: "2",      
      name: "Moonrise, Hernandez",      
      artist_id: "2",      
      year: "1941"      
    })

    @curator.add_photograph(photo_1)
    @curator.add_photograph(photo_2)

    expect(@curator.photographs).to eq([photo_1, photo_2])
  end

  it 'can add artists' do
    expect(@curator.artists).to eq([])

    artist_1 = Artist.new({
      id: "1",      
      name: "Henri Cartier-Bresson",      
      born: "1908",      
      died: "2004",      
      country: "France"      
    })
    artist_2 = Artist.new({
      id: "2",      
      name: "Ansel Adams",      
      born: "1902",      
      died: "1984",      
      country: "United States"      
    })

    @curator.add_artist(artist_1)
    @curator.add_artist(artist_2)

    expect(@curator.artists).to eq([artist_1, artist_2])
    expect(artist_1.name).to eq("Henri Cartier-Bresson")
    expect(artist_2.name).to eq("Ansel Adams")
  end

  it 'can find an artist by id' do
    artist_1 = Artist.new({
      id: "1",      
      name: "Henri Cartier-Bresson",      
      born: "1908",      
      died: "2004",      
      country: "France"      
    })
    artist_2 = Artist.new({
      id: "2",      
      name: "Ansel Adams",      
      born: "1902",      
      died: "1984",      
      country: "United States"      
    })
    @curator.add_artist(artist_1)
    @curator.add_artist(artist_2)

    expect(@curator.artists).to eq([artist_1, artist_2])
    expect(@curator.find_artist_by_id("1")).to eq(artist_1)
  end

  describe 'iteration 3' do
    before(:each) do
    @photo_1 = Photograph.new({
      id: "1",      
      name: "Rue Mouffetard, Paris (Boy with Bottles)",      
      artist_id: "1",      
      year: "1954"      
    })
    @photo_2 = Photograph.new({    
      id: "2",      
      name: "Moonrise, Hernandez",      
      artist_id: "2",      
      year: "1941"      
    })
    @photo_3 = Photograph.new({    
      id: "3",      
      name: "Identical Twins, Roselle, New Jersey",      
      artist_id: "3",      
      year: "1967"      
    })
    @photo_4 = Photograph.new({    
      id: "4",      
      name: "Monolith, The Face of Half Dome",      
      artist_id: "3",      
      year: "1927"      
    })

    @artist_1 = Artist.new({    
      id: "1",      
      name: "Henri Cartier-Bresson",      
      born: "1908",      
      died: "2004",      
      country: "France"      
    })
    @artist_2 = Artist.new({    
      id: "2",      
      name: "Ansel Adams",      
      born: "1902",      
      died: "1984",      
      country: "United States"      
    })
    @artist_3 = Artist.new({    
      id: "3",      
      name: "Diane Arbus",      
      born: "1923",      
      died: "1971",      
      country: "United States"      
    })
    end

    it 'can find photos by artist' do
      @curator.add_artist(@artist_1)
      @curator.add_artist(@artist_2)
      @curator.add_artist(@artist_3)

      @curator.add_photograph(@photo_1)
      @curator.add_photograph(@photo_2)
      @curator.add_photograph(@photo_3)
      @curator.add_photograph(@photo_4)

      expected = {
        @artist_1 => [@photo_1],
        @artist_2 => [@photo_2],
        @artist_3 => [@photo_3, @photo_4]
      }

      expect(@curator.photographs_by_artist).to eq(expected)
    end
  end
end
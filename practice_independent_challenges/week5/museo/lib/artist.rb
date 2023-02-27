class Artist
  attr_reader :id,
              :name,
              :born,
              :died,
              :country

  def initialize(hash)
    @id = hash[:id]
    @name = hash[:name]
    @born = hash[:born]
    @died = hash[:died]
    @country = hash[:country]
  end

  def age_at_death
    @died.to_i - @born.to_i
  end
end
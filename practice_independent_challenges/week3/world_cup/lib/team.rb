class Team
  attr_reader :country,
              :players

  def initialize(country)
    @country = country
    @eliminated = false
    @players = []
  end

  def eliminated?
    @eliminated
  end

  def eliminated
    @eliminated = true
  end

  def add_player(player)
    @players << player
  end

  def players_by_position(position)
    @players.find_all do |player|
      position == player.position
    end
  end
end
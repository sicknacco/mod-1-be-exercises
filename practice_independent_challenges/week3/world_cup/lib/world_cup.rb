class WorldCup
  attr_reader :year,
              :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def add_team(team)
    @teams << team
  end

  def active_players_by_position(position)
    active_players = []
    @teams.each do |team|
      if team.eliminated? == false
      position == player.position
      end
    end
  end
end
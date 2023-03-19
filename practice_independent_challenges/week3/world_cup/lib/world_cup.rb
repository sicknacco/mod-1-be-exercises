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
end
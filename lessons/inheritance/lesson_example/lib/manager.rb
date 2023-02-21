require './lib/employee'

class Manager < Employee
  attr_reader :base_salary, :per_team_rate, :departments
  def initialize(base_salary, name, id)
    super(name, id)
    @base_salary = base_salary
    @per_team_rate = 5
    @departments = []
  end

  def add_department(dept)
    @departments << dept
  end

  def benefits
    [:sick_leave, :health_insurance]
  end

  def total_compensation
    @base_salary + @per_team_rate
  end

end
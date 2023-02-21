require "./lib/manager"

RSpec.describe Manager do
  describe "setup" do
    it "exists" do
      manager = Manager.new(12, "Harry", 111)
      expect(manager).to be_a Manager
    end

    it "has base_salary, per_team_rate, and departments attributes" do
      manager = Manager.new(12, "Harry", 111)
      expect(manager.base_salary).to eq(12)
      expect(manager.per_team_rate).to eq 5
      expect(manager.departments).to be_instance_of Array
      expect(manager.departments.length).to eq (0)
    end

    it "can add_department" do
      manager = Manager.new(12, "Harry", 111)
      manager.add_department("Sales")
      expect(manager.departments).to eq(["Sales"])
      expect(manager.departments.length).to eq(1)
    end

    it "has benefits to start with" do
      manager = Manager.new(12, "Harry", 111)
      expect(manager.benefits).to eq([:sick_leave, :health_insurance])
    end
  end

  describe "Ability to have name and ID, like any other Employee" do
    it "can list name and id" do
      manager = Manager.new(12, "Harry", 111)
      expect(manager.name).to eq("Harry")
      expect(manager.id).to eq(111)
    end
  end

  describe "Can call on the total_compensation method" do
    it 'can list total compenstation' do
      manager = Manager.new(12, "Harry", 111)
      expect(manager.total_compensation).to eq(17)
    end
  end
end
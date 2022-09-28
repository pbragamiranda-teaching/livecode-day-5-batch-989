require_relative "../citizen"

describe Citizen do
  describe "#can_vote?" do
    it "returns true if the citizen is 18 years old" do
      citizen = Citizen.new("tudor", "nicolai", 18)
      expect(citizen.can_vote?).to eq(true)
    end

    it "returns false if the citizen is 17 years old" do
      citizen = Citizen.new("", "", 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe "#full_name" do
    it "should return the full name of the citizen" do
      citizen = Citizen.new("kiki", "kennedy", 50)
      expect(citizen.full_name).to eq("kiki kennedy")
    end
  end
end

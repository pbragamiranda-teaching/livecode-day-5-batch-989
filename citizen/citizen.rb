class Citizen
  attr_reader :age, :first_name, :last_name
  # OOP = STATE + BEHAVIOR
  # STATE
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  # BEHAVIOR
  def can_vote?
    @age >= 18
    # if @age >= 18
    #   return true
    # else
    #   return false
    # end
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end

# tudor = Citizen.new("tudor", "nicolai", 33)
# tudor.can_vote?
# tudor.full_name

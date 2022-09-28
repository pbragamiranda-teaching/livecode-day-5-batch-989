class SlotMachine
  SYMBOLS = ["cherry", "seven", "bell", "star", "joker"]
  # STATE

  def initialize(reels = [])
    @reels = reels
  end

  # BEHAVIOR -> score and play
  def play
    3.times do
      @reels << SYMBOLS.sample
    end
    @reels
  end

  def score
    current_score = 0
    # ["Bell", "Bell", "Bell"]
    if @reels.uniq.count == 1
      # check if 3 identical
      current_score = (SYMBOLS.index(@reels[0]) + 1) * 10
    elsif @reels.uniq.count == 2 && @reels.include?("joker")
      # check if 2 identical
      if @reels[0] == "joker"
        if @reels.count("joker") == 2
          current_score = (SYMBOLS.index(@reels.uniq[0]) + 1) * 5
        else
          current_score = (SYMBOLS.index(@reels.uniq[1]) + 1) * 5
        end
      else
        current_score = (SYMBOLS.index(@reels.uniq[0]) + 1) * 5
      end
    end
    # return the score
    return current_score
  end


end

# machine_1 = SlotMachine.new()
# machine_2 =SlotMachine.new(['joker', 'bell', 'bell'])

# p machine_1
# p machine_2

# SYMBOLS = ["Cherry", "Seven", "Bell", "Star", "Joker"]

# Joker 🤩	50	25 (2 jokers + anything)
# Star ⭐️	40	20
# Bell 🛎	30	15
# Seven 7️⃣	20	10
# Cherry 🍒	10	5


# Three identicals
# cherry => index 0 -> (index + 1) * 10
# seven => index 1 -> (index + 1) * 10


# PLAYING THE GAME
machine_1 = SlotMachine.new()

p machine_1.play
p machine_1.score

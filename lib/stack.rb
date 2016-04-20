#write code here to make some tests pass
class Stack
  attr_reader :chips
  def initialize()
    @chips =  {black: [],
               green: [],
               red: [],
               white: [],
              }
  end

  def add_chips(seed_chips)
    seed_chips.each do |chip|
      chips[chip.color]  << chip
    end
  end

  def count
    sum = 0
    @chips.each do |key, value|
      value.each do |amount|
        sum += amount.amt
      end
    end
    sum
  end
end

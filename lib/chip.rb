#write code here to make some tests pass
class Chip
  attr_reader :color, :amt
  def initialize(color, amt)
    @color = color
    @amt = amt
    @face_up = true
  end

  def value
    @amt
  end

  def face_up?
    @face_up
  end

  def flip
    if @face_up == true
      @face_up = false
    else
      @face_up = true
    end
  end

  include Comparable
  def >(chip)
    if @amt > chip.value
      return true
    end
    return false
  end

  def <(chip)
    if @amt < chip.value
      return true
    end
    return false
  end

  def ==(chip)
    if @amt == chip.value
      return true
    end
    return false
  end
end

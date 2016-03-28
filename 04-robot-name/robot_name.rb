class Robot

  LTR_ARRAY = ('A'..'Z').to_a
  NUM_ARRAY = (0..9).to_a

  attr_reader :name

  def initialize
    # reset
    @name = LTR_ARRAY.sample(2).join + NUM_ARRAY.sample(3).join
  end

  def reset
    @name = LTR_ARRAY.sample(2).join + NUM_ARRAY.sample(3).join
  end

end

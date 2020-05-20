class HighScoreTable
  def initialize (size)
    @size = size
    @score = []
  end

  def update(score)
    return @score << score if @score.size < @size
    @score = @score.sort.reverse
    @score[-1] = score if @score[-1]< score
  end

  def reset
    @score = []
  end

  def scores
    @score = @score.sort.reverse
  end
end
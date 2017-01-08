# Class to format a multiplication table
class MultiplicationTable
  attr_reader :table, :x, :y

  def initialize(x, y)
    @x = x
    @y = y
    @table = format_table
  end

  private

  def format_table
    start = [[nil, x].flatten]
    @y.each do |y|
      next_arr = []
      next_arr << y
      @x.each do |x|
        next_arr << (y * x)
      end
      start << next_arr
    end
    start
  end
end

ten = [2, 3, 5]

p MultiplicationTable.new([1, 2, 3], [4, 5, 6]).table

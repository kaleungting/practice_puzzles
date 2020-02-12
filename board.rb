require_relative "tile"
class Board

  attr_reader :grid, :file
  def initialize(file_name)
    
    @grid = File.readlines(file_name).map(&:chomp)

  end

  def render
    @grid.map! do |line|
      line.split("").map!(&:to_i)
    end
    
    @grid.map! do |line|
      line.map! do |el|
        if el == 0
          Tile.new(el,false)
          "_"
        else
          Tile.new(el, true)
        end
      end
    end
  end

  def print
    @grid.each do |row|
      puts row.join(" ")
    end
  end



end

if __FILE__ == $PROGRAM_NAME 
  b1 = Board.new("sudoku1.txt")
  b1.render
  b1.print

end

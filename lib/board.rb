class Board

  attr_accessor :cells

  def initialize
    reset!
  end

  def reset!
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " ", ]
  end

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} \n\n\n"
  end

  def position(input)
    input = input.to_i
    @cells[input - 1]
  end

  def full?
    !@cells.include?(" ")
  end

  def turn_count
    @cells.count {|token| token == "X" || token == "O"}
  end

  def taken?(index)
    index = index.to_i
    index -= 1
    if @cells[index] == "X" || @cells[index] == "O"
      true
    else
      false
    end
  end

  def valid_move?(input)
    input = input.to_i
    !taken?(input) && input.between?(1,9)
  end

  def update(index, player)
    index = index.to_i
    index -= 1
    @cells[index] = player.token
  end

end

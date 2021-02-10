module Players
  class Computer < Player

    def move(input)
      puts "Please enter 1-9:"
      i = gets.chomp
      if valid_move?(i)
        return i
      end
    end
  end
end

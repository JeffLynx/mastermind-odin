module Game
  def play
    turns_played = 0

    loop do
      if turns_played == 12
        puts 'Game over!'
        p @combo
        break
      end

      puts 'Valid colors: purple, orange, yellow, green, blue, white.'
      puts 'Enter your guess (4 colors separated by spaces):'
      guess = gets.chomp.downcase.split

      loop do
        if guess.length != @combo.length
          puts 'Wrong number of colors! Try again: '
        elsif guess.any? { |color| !ComboGen::COLORS.include?(color) }
          puts 'One or more invalid/misspelled colors! Try again: '
        else
          break
        end
        guess = gets.chomp.downcase.split
      end

      if guess == @combo
        puts 'You win!'
        break
      else
        evaluate(guess)
      end

      turns_played += 1
    end
  end
end

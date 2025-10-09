module GuessEvaluator
  def evaluate(guess)
    # Complete match:
    puts 'All colors and positions match! Good job!' if guess == @combo

    # Keeping track of exact matches and non-matching elements:
    @exact_count = 0
    combo_leftovers = []
    guess_leftovers = []

    @combo.each_with_index do |col, pos|
      if guess[pos] == col
        @exact_count += 1
      else
        combo_leftovers << col
        guess_leftovers << guess[pos]
      end
    end
    puts "Exact matches: #{@exact_count}"

    # Partial matches:
    @partial_count = 0
    guess_leftovers.each do |col|
      idx = combo_leftovers.index(col)
      next unless idx

      @partial_count += 1
      combo_leftovers.delete_at(idx)
    end
    puts "Partial matches: #{@partial_count}"
  end
end

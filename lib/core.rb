# 6 possible colors, 4 slots.
class Core
  COLORS = %w[purple orange yellow green blue white].freeze
  MAX_TURNS = 12

  attr_reader :combo

  # Generate a 4 color combo by sampling the array.
  # If we don't want repeats, we would do:
  # @combo = COLORS.sample(4) instead. Maybe make this a choosable option in future?
  def initialize
    @combo = Array.new(4) { COLORS.sample }
    p @combo
  end

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

  def game
    guess = %w[purple orange purple green]
    turns_played = 0
    loop do
      if turns_played == MAX_TURNS
        puts 'Game over!'
        break
      end

      guess = Array.new(4) { COLORS.sample }

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

game = Core.new
game.game

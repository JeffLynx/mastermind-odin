module ComboGen
  COLORS = %w[purple orange yellow green blue white].freeze

  attr_reader :combo

  def generate
    puts 'Welcome to Mastermind! You will have 12 turns to guess the right combination of four colors.'
    puts 'Would you like to enable repeats? (I.e same color may appear more than once in the secret code) y/n'
    answer = gets.chomp.downcase
    loop do
      if answer == 'y'
        @combo = Array.new(4) { COLORS.sample }
        break
      elsif answer == 'n'
        @combo = COLORS.sample(4)
        break
      else
        puts 'Invalid input. Use y for yes and n for no.'
        answer = gets.chomp.downcase
      end
    end
  end
end

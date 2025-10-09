require_relative 'lib/combo_gen'
require_relative 'lib/guess_evaluator'
require_relative 'lib/game'

class Mastermind
  include ComboGen
  include GuessEvaluator
  include Game
end

game = Mastermind.new
game.generate
game.play

class ComboGen
  COLORS = %w[purple orange yellow green blue]

  attr_reader :combo

  def initialize
    @combo = ComboGen::COLORS.sample(4)
  end
end

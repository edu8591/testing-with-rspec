# frozen_string_literal: true

# Documentacion de Card
class Card
  attr_reader :suit
  attr_accessor :rank

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

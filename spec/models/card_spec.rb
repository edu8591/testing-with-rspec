# frozen_string_literal: true

require_relative '../../app/models/card'

RSpec.describe Card do
  # def card
  #   card = Card.new 'Ace', 'Spades'
  # end

  # before do
  #   @card = Card.new 'Ace', 'Spades'
  # end

  let(:card) { Card.new 'Ace', 'Spades' }

  it 'has a rank that can change' do
    # expect(card.rank).to eq('Ace') # using the method
    # expect(@card.rank).to eq('Ace') # using the before hook
    expect(card.rank).to eq('Ace')
    card.ramk = 'Queen'
    expect(card.rank).to eq('Queen') # This will not work when using the helper method
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end
end

# frozen_string_literal: true

require_relative '../../app/models/proggraming_language'

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('Python') }

  it 'should store the name of the language' do
    expect(language).to eq('Python')
  end

  context 'with no initialization argument' do
    let(:language) { ProgrammingLanguage.new } # will use this variable instead of the one in the outer scope
    it 'should default to Ruby as the name' do
      expect(language).to eq('Ruby')
    end
  end
end

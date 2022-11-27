# frozen_string_literal: true

RSpec.describe Hash do
  subject(:new_alias) do # we can also give an alias to our subject
    { a: 'a', b: 'b' }
  end

  it 'has two key value pairs' do
    expect(subject.count).to eq(2)
    expect(new_alias.length).to eq(2)
  end

  context 'nested example' do
    # if there are setups on a parent they will be found on a child not the other way around
    it 'has two key value pairs' do
      expect(subject.count).to eq(2)
      expect(new_alias.length).to eq(2)
    end
  end
end

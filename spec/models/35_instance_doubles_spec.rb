require_relative '../../app/models/person'

RSpec.describe Person do
  context 'a regular double' do
    it 'can implement any method' do
      person = double(a: 'Hello', b: 20)
      expect(person.a).to eq('Hello')
    end
  end

  context 'an instance double' do
    it 'can only implement methods that are defined on the class' do
      # person = instance_double(described_class, a: 'Hello', b: 20) # Rspec will stop the code on this line
      person = instance_double(described_class, a: 'Hello')

    end
  end
end

require_relative '../../app/models/movie'

RSpec.describe Movie do
  # the goal here is to use a double top simulate an actor object and separate them from the movie class
  let(:stuntman) { double('Mr. Danger', { ready?: true, act: 'any string', fall_off_ladder: 'any string', light_on_fire: false }) }

  subject { described_class.new(stuntman) }

  context '#start_shooting method' do
    it 'expects an actor to do 3 actions' do
      # expect(stuntman).to receive(:ready?)
      # expect(stuntman).to receive(:act)
      # expect(stuntman).to receive(:fall_off_ladder)
      # expect(stuntman).to receive(:light_on_fire)
      # these previous lines will check that the method start shooting calls the stuntman methods once
      # if I modify the movie method to run the act method 2 times I whould have to specify to that to the test
      # expect(stuntman).to receive(:act).once # expexts to be run only once
      # expect(stuntman).to receive(:act).exactly(1).times # the as line above
      # acc also indicate how many times with this yntax
      # expect(stuntman).to receive(:act).twice # exactly 2 times
      # expect(stuntman).to receive(:act).thrice # exactly 3 times
      # expect(stuntman).to receive(:act).at_most(1).times # no more than x number of times
      # expect(stuntman).to receive(:act).at_least(1).times # no less than x number of times
      #  the issue with creating those lines in separate and running is that they will stack



      subject.start_shooting
    end
  end
end

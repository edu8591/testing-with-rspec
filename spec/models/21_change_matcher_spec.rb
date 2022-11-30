RSpec.describe 'change matcher' do
  subject { [1, 2, 3] }

  it 'checks if a methos changes an object state' do
    # expect { subject << 4 }.to change { subject.length }.from(3).to(4)
    expect { subject << 4 }.to change { subject.length }.by(1)
  end

  it 'accepts negative arguments' do
    expect { subject.pop }.to change { subject.length }.from(3).to(2)
    expect { subject.pop }.to change { subject.length }.by(-1)
  end
end

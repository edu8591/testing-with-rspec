require_relative '../../app/models/sausage_link'


RSpec.shared_examples 'a ruby object with 3 elements' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  include_examples 'a ruby object with 3 elements'
  subject { [1, 2, 3] }
end

RSpec.describe String do
  include_examples 'a ruby object with 3 elements'
  subject { 'abc' }
end

RSpec.describe Hash do
  include_examples 'a ruby object with 3 elements'
  subject { { a: 1, b: 2, c: 3 } }
end

RSpec.describe SausageLink do
  include_examples 'a ruby object with 3 elements'
  subject { SausageLink.new }
end

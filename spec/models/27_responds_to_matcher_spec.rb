RSpec.describe HotChocolate do
  it ' responds_to matcher confirms that an object can responds to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard)
    expect(subject).to respond_to(:drink, :discard, :purchase) # even if they expect arguments
  end

  it ' confirms as well than an object can respond to a method with arguments' do
    expect(subject).to respond_to(:purchse).with(1).arguments
    # checks that it needs only 1 argument
  end
end

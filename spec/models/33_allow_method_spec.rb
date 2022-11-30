RSpec.describe 'allow method review' do
  it 'can customize return values for methods on doubles' do
    calculator = double
    allow(calculator).to receive(:add).and_return(15)
  end

  it 'can stub one or more methods in a real object' do
    arr = [1, 2, 3]
    allow(arr).to receive(:sum).and_return(6)
  end

  it 'can return multiple return values in secuence' do
    mock_arr = double
    allow(mock_arr).to receive(:pop).and_return(:c, :b, nil)

    expect(mock_arr.pop).to eq(:c)
    expect(mock_arr.pop).to eq(:b)
    expect(mock_arr.pop).to be_nil
    expect(mock_arr.pop).to be_nil
  end
end

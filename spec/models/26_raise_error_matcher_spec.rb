RSpec.describe 'raise_error matcher' do
  def some_method
    x # this will raise a NameError because x is not defiend
  end

  it 'can check for any error' do
    expect { some_method }.to raise_error # its not recomended to check for any error that arises
    # because it might not be the one we are expecting
  end

  it 'can check for a specific error' do
    expect { some_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
  end

  it 'can check for user created error' do
    expect { raise CustomError }.to raise_error(CustomError)
  end
end

class CustomError < StandardError; end

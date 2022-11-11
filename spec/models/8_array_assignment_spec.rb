=begin
1) Create a new ​array_spec.rb​ file.
2) Create an example group using ​RSpec.describe​ with an argument of ​Array​.
3) This represent Ruby's native Array class.
4) Add an example with a docstring of your choice.
5) Write an assertion that tests that the initial length of ​subject​ is 0.
6) In the same example, invoke the ​push​ method to add an element to the ​subject​ array.
7) Write another assertion to check that the length of the array is now 1.

---Questions for this assignment---
1) Paste your complete code below.
2) What does the subject helper method return?
3) Why is better to pass a class argument to the describe method instead of a string with the class name?
=end

RSpec.describe Array do
  it 'should start off empty' do
    expect(subject).to be_empty
  end

  it 'should contain only one element' do
    subject << 'a'
    expect(subject.count).to eq(1)
  end
end

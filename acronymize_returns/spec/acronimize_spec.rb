require_relative '../acronymize'

describe '#acronimize' do
  it 'should return a string' do
    expectation = String
    actual = acronimize('').class # => String

    expect(actual).to eq(expectation)
  end

  it 'should return the right acronym' do
    expectation = 'AFK'
    actual = acronimize('Away From Keyboard')

    expect(actual).to eq(expectation)
  end
end
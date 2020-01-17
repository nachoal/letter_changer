require_relative '../encrypt'

describe '#encrypt' do
  it 'should return a string' do
    expected = String
    actual = encrypt('').class

    expect(actual).to eq(expected)
  end

  it 'should return the right encryption' do
    expected = 'QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD'
    actual = encrypt('THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG')

    expect(actual).to eq(expected)
  end
end

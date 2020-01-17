require_relative '../encrypt_refactored'

describe '#encrypt_refactored' do
  it 'should return a string' do
    expected = String
    actual = encrypt('').class

    expect(actual).to eq(expected)
  end

  it 'should return the right encrypted sentense' do
    expected = 'QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD'
    actual = encrypt('THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG')

    expect(actual).to eq(expected)
  end
end

describe '#encrypt_word' do
  it 'should return a string' do
    expected = String
    actual = encrypt_word('').class

    expect(actual).to eq(expected)
  end

  it 'should return the right encrypted word' do
    expected = 'YOLTK'
    actual = encrypt_word('BROWN')

    expect(actual).to eq(expected)
  end
end
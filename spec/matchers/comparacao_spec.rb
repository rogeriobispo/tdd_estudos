describe 'Matchers de Comparaçao' do
  it '>' do
    expect(5).to be > 4
  end

  it '>=' do
    expect(5).to be >= 1
    expect(5).to be >= 5
  end

  it '<' do
    expect(4).to be < 5
  end

  it '<=' do
    expect(1).to be <= 5
    expect(2).to be <= 2
  end

  it 'be_between inclusive' do
    expect(5).to be_between(2,7).inclusive
    expect(2).to be_between(2,7).inclusive
    expect(7).to be_between(2,7).inclusive
  end


  it 'be_between exclusivo' do
    expect(5).to be_between(2,7).exclusive
    expect(2).to be_between(2,7).exclusive
    expect(7).to be_between(2,7).exclusive
  end

  it 'Match' do
    expect("fulano@lobo.com.br").to match(/[aA-zZ]@[aA-zZ]./)
  end

  it 'start_with' do
    expect("fulano de tal").to start_with("fulano")
    expect([1,2,3]).to start_with(1)
  end

  it 'end_with' do
    expect("fulano de tal").to end_with("tal")
    expect([1,2,3]).to end_with(3)
  end
end

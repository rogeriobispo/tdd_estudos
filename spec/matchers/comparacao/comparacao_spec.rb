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

  it 'be_between inclusive / Falhas agregadas', :aggregate_failures do
      expect(5).to be_between(2,7).inclusive
      expect(1).to be_between(2,7).inclusive
      expect(8).to be_between(2,7).inclusive
  end

  it 'be_between inclusive / Falhas agregadas', aggragate_failures: true do
      expect(5).to be_between(2,7).inclusive
      expect(1).to be_between(2,7).inclusive
      expect(8).to be_between(2,7).inclusive
  end
  # pode ser configurado em spec helper falhas agregadas todos seus teste
  # Serao agregados.
  # config.define_derived_metadata do |meta|
  #   meta[:aggregate_failures] = true
  # end
  it 'be_between inclusive / Falhas agregadas' do
      aggregate_failures do
        expect(5).to be_between(2,7).inclusive
        expect(1).to be_between(2,7).inclusive
        expect(8).to be_between(2,7).inclusive
      end
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

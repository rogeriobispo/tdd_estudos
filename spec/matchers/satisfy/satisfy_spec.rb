describe 'satisfy' do
  it{ expect(10).to satisfy { |value| value % 2 == 0} }

  it{
    expect(9).to satisfy('be a multiple of 3') do|value|
      value % 3 == 0
    end
  }
end

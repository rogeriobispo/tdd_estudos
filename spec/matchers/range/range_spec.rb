describe (1..10), 'Range' do
  it '#cover' do
    expect(subject).to cover(2)
    expect(subject).to cover(2,5)
    expect(subject).not_to cover(0,11)
  end
end

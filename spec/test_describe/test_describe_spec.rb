describe 'rogerio' do
  it 'String'  do
    expect(subject.size).to eq 7
  end

  describe [1,2] do
    it 'to be an array' do
      expect(subject).to be_kind_of(Array)
    end
  end
end

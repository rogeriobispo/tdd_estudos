require 'calculator'
describe Calculator do
  context '#sum' do
    it 'with positive numbers' do
      expect(subject.sum(1,2)).to eq(3)
    end

    it 'with negative numbers' do
      expect(subject.sum(-5, -2)).to eq(-7)
    end

    it 'with negative and positive numbers' do
      expect(subject.sum(5, -2)).to eq(3)
    end
  end
end

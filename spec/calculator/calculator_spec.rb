require 'calculator'
describe Calculator do
  context '#div' do
    it 'divided by zero' do
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError)
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError, "divided by 0")
      expect{subject.div(3,0)}.to raise_error(/divided/)
      expect{subject.div(3,0)}.to raise_error("divided by 0")
    end
  end
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

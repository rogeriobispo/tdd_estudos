RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1,2,3,4,5]), 'Array' do
  it '#include work only with element of array' do
    expect(subject).to include(2)
    expect(subject).to include(2,1)
  end

  it{ expect(subject).to exclude(6,7) }

  it '#match_array only the full array' do
    expect(subject).to match_array([1,2,3,4,5])
  end

  it '#contain_exactly there no need to pass as array ' do
    expect(subject).to contain_exactly(1,2,3,4,5)
  end
end

RSpec::Matchers.define_negated_matcher :be_not_within, :be_within

describe 'be_within' do
  it { expect(12.5).to be_within(0.5).of(12.0) }
  it { expect(11.5).to be_within(0.5).of(12.0) }
  it { expect([12.1, 12.3, 12.4]).to all(be_within(0.5).of(12.0)) }

  it{ expect([13.0, 13.3, 13.4]).to all(be_not_within(0.5).of(12.0)) }
end

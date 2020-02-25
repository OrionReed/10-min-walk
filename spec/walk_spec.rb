require 'walk'

describe Walk do
  it { is_expected.to(respond_to(:walk).with(1).argument) }
  it 'fails with 1 argument' do
    expect(subject.walk(["N"])).to(eq(false))
  end
  it 'fails with 10x north' do
    expect(subject.walk(["N", "N", "N", "N", "N", "N", "N", "N", "N", "N"])).to(eq(false))
  end
  it 'fails with 5x north, 5x south' do
    expect(subject.walk(["N", "N", "N", "N", "N", "S", "S", "S", "S", "S"])).to(eq(true))
  end
end

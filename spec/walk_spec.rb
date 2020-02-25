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

 #Alternate testing (EAST/ WEST) 

  it 'fails with 3x North 3x South 2x East 2x West' do
    expect(subject.walk(["N", "N", "N", "S", "S", "S", "E", "E", "W", "W"])).to(eq(true))
  end
end


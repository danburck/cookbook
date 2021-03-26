require "calculator"

describe Calculator do
  describe '#add' do
    it 'adds two integers and returns the sum' do
      expect(Calculator.new.add(3, 4)).to eq(7)
    end

    it 'adds negative integers' do
      expect(Calculator.new.add(-3, -5)).to eq(-8)
    end
  end
end

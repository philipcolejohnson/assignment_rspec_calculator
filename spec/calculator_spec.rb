require 'Calculator'

describe Calculator do

  let(:c) { Calculator.new }

  describe "#add" do

    it "returns the sum of two addends" do
      expect(Calculator.new.add(1, 2)).to eq(3)
    end

    it "returns the sum with a negative argument" do
      expect(Calculator.new.add(-3, 3)).to eq(0)
    end
  end

  describe "#subtract" do
    it "returns difference between two arguments" do
      expect(c.subtract(4,2)).to eq(2)
    end

    it "returns the correct difference with negative numbers" do
      expect(c.subtract(-3, -4)).to eq(1)
    end
  end

end
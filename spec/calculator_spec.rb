require 'calculator'

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

  describe "#multiply" do
    it "returns the product of two arguments" do
      expect(c.multiply(-5,6)).to eq(-30)
    end
  end

  describe "#divide" do
    it "returns the quotient of two integers" do
      expect(c.divide(4,-2)).to eq(-2)
    end

    it "returns a float when dividing two integers" do
      expect(c.divide(5,2)).to eq(2.5)
    end
  end

  describe "#pow" do
    it "returns the result of raising a base by an exponent" do
      expect(c.pow(2,3)).to eq(8)
    end

    it "returns the results of raising a base by a negative number" do
      expect(c.pow(2,-2)).to eq((1.0/4.0))
    end

    it "returns the results raising a base by a fraction" do
      expect(c.pow(16,(1.0/4.0))).to eq(2)
    end
  end

    describe "#sqrt" do
      it "returns a rational number of a number" do
        expect(c.sqrt(9)).to eq(3)
      end

      it "can return an irrational square root" do
        expect(c.sqrt(10)).to eq()
      
    end

end
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

    it "can add two floats" do
      expect(c.add(2.5, 3.5)).to eq(6)
    end
  end

  describe "#subtract" do
    it "returns difference between two arguments" do
      expect(c.subtract(4,2)).to eq(2)
    end

    it "returns the correct difference with negative numbers" do
      expect(c.subtract(-3, -4)).to eq(1)
    end

    it "can subtract two floats" do
      expect(c.subtract(4.5, 2.1)).to eq(2.4)
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

    it "raises an error when dividing by zero" do
      expect{c.divide(1,0)}.to raise_error (ArgumentError)
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
      expect(c.sqrt(10)).to be_within(0.2).of(3)
    end

    it "will raise an argument error if passed a negative number" do
      expect{c.sqrt(-9)}.to raise_error(ArgumentError)
    end
    
  end

  describe "#memory" do
    it "starts with nothing in memory" do
      expect(Calculator.new.memory).to eq(nil)
    end

    it "can store numbers in memory" do
      c.memory = 3
      expect(c.memory).to eq(3)
    end

    it "Replaces number in memory with new number" do
      c.instance_variable_set(:@memory, 5)
      c.memory = 3
      expect(c.instance_variable_get(:@memory)).to eq(3)
    end

    it "clears memory after returning" do
      c.instance_variable_set(:@memory, 5)
      c.memory
      expect(c.instance_variable_get(:@memory)).to eq(nil)
    end
  end

  describe "#output" do
    let (:string_c){Calculator.new(true)}
    it "returns a string when adding" do
      expect(string_c.add(2,4)).to eq("6")
    end
  end





end
# spec/calc_spec.rb
require 'calc'

describe Calc do
  describe '#plus' do
    it 'successfully returns the result of one plus two' do
      expect(Calc.new.one.plus.two).to eq(3)
    end
  end

  describe '#minus' do
    it 'successfully returns the result of five minus six' do
      expect(Calc.new.five.minus.six).to eq(-1)
    end
  end

  describe '#times' do
    it 'successfully returns the result of seven times two' do
      expect(Calc.new.seven.times.two).to eq(14)
    end

    it 'successfully returns the result of seven times zero' do
      expect(Calc.new.seven.times.zero).to eq(0)
    end
  end

  describe '#divided_by' do
    it 'successfully returns the result of nine divided by three' do
      expect(Calc.new.nine.divided_by.three).to eq(3)
    end

    it 'raises an exception when attempting to divide by zero' do
      expect {Calc.new.nine.divided_by.zero}.to raise_error(ZeroDivisionError, 'Cannot divide by zero')
    end
  end

  describe 'invalid format' do
    it 'raises an exception when an invalid method is provided' do
      expect {Calc.new.one.add.two}.to raise_error(NoMethodError)
    end

    it 'raises an exception when no mathematical operator is provided' do
      expect {Calc.new.one.two.three}.to raise_error(RuntimeError, 'No mathematical operator provided')
    end

    it 'raises an exception when less than two operands are provided' do
      expect {Calc.new.one.plus.minus}.to raise_error(RuntimeError, 'Two operands must be provided in order to solve the equation')
    end

    it 'raises an exception when the equation contains an operator before the first number' do
      expect {Calc.new.plus.one.two}.to raise_error(RuntimeError, 'Methods are chained in an invalid order')
    end
  end
end

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
  end

  describe 'invalid format' do
    it 'raises an exception when no mathematical operator is provided' do
      expect {Calc.new.one.two.three}.to raise_error(RuntimeError, 'No mathematical operator provided')
    end

    it 'raises an exception when more than one mathematical operator is provided' do
      expect {Calc.new.one.plus.minus}.to raise_error(RuntimeError, 'Too many mathematical operators were provided')
    end

    it 'raises an exception when an invalid method is provided' do
      expect {Calc.new.one.add.two}.to raise_error(NoMethodError)
    end

    it 'raises an exception when methods are chained in an invalid order' do
      expect {Calc.new.plus.one.two}.to raise_error(RuntimeError, 'Methods are chained in an invalid order')
    end

    # it 'raises an exception when less than two operands are provided' do
    #   expect {Calc.new.one.plus}.to raise_error(RuntimeError, 'Less than two operands were provided')
    # end

    # it 'raises an exception when more than two operands are provided' do
    #   expect {Calc.new.one.plus.two.three}.to raise_error(RuntimeError, 'More than two operands were provided')
    # end
  end
end

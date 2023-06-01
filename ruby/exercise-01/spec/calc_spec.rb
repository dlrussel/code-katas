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
  end

  describe '#divided_by' do
    it 'successfully returns the result of nine divided by three' do
      expect(Calc.new.nine.divided_by.three).to eq(3)
    end
  end
end

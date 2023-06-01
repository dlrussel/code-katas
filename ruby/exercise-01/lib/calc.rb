# lib/calc.rb

class Calc
  VALUES = {
    zero: 0,
    one: 1,
    two: 2,
    three: 3,
    four: 4,
    five: 5,
    six: 6,
    seven: 7,
    eight: 8,
    nine: 9
  }

  def initialize
    @operands = []
    @operator = nil
  end

  def plus
    @operator = :+
    self
  end

  def minus
    @operator = :-
    self
  end

  def times
    @operator = :*
    self
  end

  def divided_by
    @operator = :/
    self
  end

  def method_missing(method_name)
    if VALUES.keys.include?(method_name)
      @operands << VALUES[method_name]
      @operands.length > 1 ? solve : self
    else
      super
    end
  end

  def solve
    @operands.inject(@operator)
  end
end

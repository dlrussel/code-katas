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

  OPERATORS = {
    plus: :+,
    minus: :-,
    times: :*,
    divided_by: :/
  }

  def initialize
    @operands = []
    @operator = nil
  end

  def method_missing(method_name)
    if VALUES.keys.include?(method_name)
      @operands << VALUES[method_name]
      @operands.length > 1 ? solve : self
    elsif OPERATORS.keys.include?(method_name)
      # check if an operator has already been set to determine if multiple operators have been provided
      if @operator.nil?
        @operator = OPERATORS[method_name]
        self
      else
        # raise an exception if more than one operator is provided
        raise 'Too many mathematical operators were provided'
      end
    else
      super
    end
  end

  def solve
    if !@operator.nil?
      @operands.inject(@operator)
    else
      # raise an exception if no operator is provided when trying to solve
      raise 'No mathematical operator provided'
    end
  end
end

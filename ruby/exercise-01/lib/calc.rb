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
    @equation = []

  end

  def method_missing(method_name)
    # if the method called is a valid number, add it to the equation
    if VALUES.keys.include?(method_name)

      @equation << VALUES[method_name]

      # when the equation has at least three elements, solve it
      @equation.length < 3 ? self : solve

    # if the method called is a valid operator
    elsif OPERATORS.keys.include?(method_name)
      @equation << OPERATORS[method_name]

      # when the equation has at least three elements, solve it
      @equation.length < 3 ? self : solve
    else
      super
    end
  end

  def solve
    can_solve?

    # set the second element in the equation to operator
    operator = @equation[1]

    # delete the operator from the equation
    @equation.delete(operator)

    @equation.inject(operator)
  end

  private

  def can_solve?
    # set valid_operators array by taking the intersection of the equation array and the values of the OPERATORS hash
    valid_operators = @equation & OPERATORS.values

    case valid_operators.length
    when 0
      # raise an exception if no operator is provided when trying to solve
      raise 'No mathematical operator provided'
    when 1
      true
    else
      # raise an exception if more than one operator is provided when trying to solve
      raise 'Too many mathematical operators were provided'
    end
  end
end

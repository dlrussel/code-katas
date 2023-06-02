# lib/calc.rb

class Calc
  NUMBERS = {
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

  VALID_METHODS = NUMBERS.merge(OPERATORS)

  def initialize
    @equation = []

  end

  def method_missing(method_name)
    # if the method called is a valid number or a valid operator, add it to the equation
    if VALID_METHODS.keys.include?(method_name)

      @equation << VALID_METHODS[method_name]

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

    # set valid_numbers array by taking the intersection of the equation array and the values of the NUMBERS hash
    valid_numbers = @equation & NUMBERS.values

    # raise an exception if the equation contains no operators
    raise 'No mathematical operator provided' if valid_operators.empty?

    # raise an exception if the equation contains less than two numbers
    raise 'Two operands must be provided in order to solve the equation' if valid_numbers.length < 2

    # raise an exception if the equation contains an operator before the first number
    raise 'Methods are chained in an invalid order' if @equation.index(valid_operators[0]) < @equation.index(valid_numbers[0])

    true
  end
end

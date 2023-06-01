# lib/calc.rb

class Calc
  def initialize
    @operands = []
    @operator = nil
  end

  def one
    @operands << 1
    @operands.length > 1 ? solve : self
  end

  def two
    @operands << 2
    @operands.length > 1 ? solve : self
  end

  def three
    @operands << 3
    @operands.length > 1 ? solve : self
  end

  def four
    @operands << 4
    @operands.length > 1 ? solve : self
  end

  def five
    @operands << 5
    @operands.length > 1 ? solve : self
  end

  def six
    @operands << 6
    @operands.length > 1 ? solve : self
  end

  def seven
    @operands << 7
    @operands.length > 1 ? solve : self
  end

  def eight
    @operands << 8
    @operands.length > 1 ? solve : self
  end

  def nine
    @operands << 9
    @operands.length > 1 ? solve : self
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

  def solve
    @operands.inject(@operator)
  end
end

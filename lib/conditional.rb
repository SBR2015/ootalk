require './instruction'
require './expression'


class Conditional < Instruction

  private

    thenbranch = Instruction.new
    elsebranch = Instruction.new
    test = Expression.new

end

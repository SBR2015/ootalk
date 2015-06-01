require './instruction'
require './variable'
require './expression'

class Assignment < Instruction

  private

    target = Variable.new
    source = Expression.new

end

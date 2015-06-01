require './expression'
require './operator'

class Binary < Expression

  private

    term1 = Expression.new
    term2 = Expression.new
    op = Operator.new

end

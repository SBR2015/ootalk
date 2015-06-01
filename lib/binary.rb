require './expression'
require './operator'

class Binary < Expression

  private

    def initialize()
      @term1 = Expression.new
      @term2 = Expression.new
      @op = Operator.new
    end
end

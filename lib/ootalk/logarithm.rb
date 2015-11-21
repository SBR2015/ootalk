require 'ootalk/operator'

module Ootalk
  class Logarithm < Operator
    private

      def initialize(left, right)
        super
        @operator = 'log'
      end

    public

      def exec
        Math.log(@right.exec) / Math.log(@left.exec)
      end

      def to_s
        return "#{@operator}#{@left}(#{@right})"
      end
  end
end

require 'ootalk/operator'

module OoTalk
  class Surplus < Operator
    private

      def initialize(left, right)
        super
        @operator = '%'
      end

    public

      def exec
        @left.exec % @right.exec
      end
  end
end

require 'ootalk/operator'

module OoTalk
  class Loop
    def initialize(left, right)
      @left = left
      @right = right
      @operator = 'L'
    end

    def exec
      v = 0
      @left.exec.times do
        v = @right.exec
      end
      return v
    end
  end
end

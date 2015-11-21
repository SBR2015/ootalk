require 'ootalk/instruction'

module Ootalk
  class Skip < Instruction

    private

    def initialize(comment)
      @comment = comment
    end

    public

    def exec
      return nil
    end

    def to_s
      return "# #{@comment.to_s}"
    end

  end
end

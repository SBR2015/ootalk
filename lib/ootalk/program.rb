require 'ootalk/instruction'

module OoTalk
  class Program
    def initialize(data)
      @body = data
    end

    def raw_data
      @body
    end

    def exec
      '{result: "test"}'
    end

    def to_s
      '{Result: "test"}'
    end
  end
end

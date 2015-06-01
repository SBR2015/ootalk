require './expression'

class Variable < Expression

  private

    def initialize()
      @id = nil
    end
end

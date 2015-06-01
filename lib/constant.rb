require './expression'

class Constant < Expression

  private

    def initialize()
      @value = nil
    end
end

require File.dirname(__FILE__) + '/expression'

class Variable < Expression

  private

    def initialize()
      @id = nil
    end
end

class Operator

  private

    def initialize(left, right)
      @left = left
      @right = right
      @operator = '?'
    end

  public

    def to_s
      # どっちで書くかは要検討
      "(#{@left}#{@operator}#{@right})"
      # "(" + @left.to_s + @operator.to_s + @right.to_s + ")"
    end

end

require 'ootalk/instruction'

module OoTalk
  class Compound < Instruction
    private
     def initialize(left, right)
       @left = left
       @right = right
       @op = ';'
     end

    public
      # @left.exec: 式の実行
      # @right.exec: 式の実行
      #　exec: block{}の中で、式列一個づつ実行してから、最後の結果（right.exec）を返す
      def exec
        @left.exec
        return @right.exec
      end

       #　block{}内の式列の表示
      def to_s
       "{#{@left}#{@op} #{@right}}"
      end
   end
end 
 

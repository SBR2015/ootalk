require 'spec_helper'
require 'ootalk'
require 'ootalk/loop'

describe 'Ootalk::compound class' do
   var1 = OoTalk::Variable.new('n')
   var2 = OoTalk::Variable.new('s')
   con = OoTalk::Constant.new(1)
    #n > 0
   gt =  OoTalk::GreaterThan.new(var1,OoTalk::Constant.new(0))
    # n = 5
   ass1 = OoTalk::Assignment.new(var1,OoTalk::Constant.new(5))
    # s = 1
   ass2 = OoTalk::Assignment.new(var2,con)

    # s = s*n
   asst = OoTalk::Assignment.new(var2,OoTalk::Times.new(var2,var1))

    # n = n-1
   ss = OoTalk::Assignment.new(var1,OoTalk::Substract.new(var1,con))

   #  while(n > 0) do
   #  s = s * n
   #  n = n-1
   #  end
   lp = OoTalk::Loop.new(gt,asst,ss)

    # 5の階乗を計算する！(block{}内式列計算)
    # {n = 5
    #  s = 1
    #  while(n > 0) do
    #  s = s * n
    #  n = n-1
    #  end}
   com =  OoTalk:: Compound.new(ass1, OoTalk:: Compound.new(ass2,OoTalk:: Compound.new(lp,var2)))

    it 'should be initialized properly' do
      expect(com).to_not be_nil
    end
   
    it 'should execute exec properly' do
      #5 の階乗を計算する結果
       expect(com.exec).to be 120
    end

    it 'should execute to_s properly' do
      #5 の階乗（式列の表示）
      expect(com.to_s).to be == "(n=5;(s=1;(while true do\n  break unless (n>0)\n  s=(s*n)\n  n=(n-1)\nend;s)))"
    end
end
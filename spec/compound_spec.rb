require 'spec_helper'
require 'ootalk'
require 'ootalk/loop'

describe 'Ootalk::compound class' do
  var_n = OoTalk::Variable.new('n')
  var_s = OoTalk::Variable.new('s')
     # s = 1
  s_eq_1 = OoTalk::Assignment.new(var_s,con = OoTalk::Constant.new(1))
     # s = s*n
  s_product = OoTalk::Assignment.new(var_s,OoTalk::Times.new(var_s,var_n))
     #n > 0
  n_greater_than_0 =  OoTalk::GreaterThan.new(var_n,OoTalk::Constant.new(0))
     # n = 5
  n_eq_5 = OoTalk::Assignment.new(var_n,OoTalk::Constant.new(5))
     # n = n-1
  n_decrement = OoTalk::Assignment.new(var_n,OoTalk::Substract.new(var_n,OoTalk::Constant.new(1)))

   #  while(n > 0) do
   #  s = s * n
   #  n = n-1
   #  end
  lp = OoTalk::Loop.new(n_greater_than_0,s_product,n_decrement)

    # 5の階乗を計算する！(block{}内式列計算)
    # {
    #  n = 5
    #   {
    #    s = 1
    #    {
    #     while(n > 0) do
    #     s = s * n
    #     n = n-1
    #     end
    #     return s
    #     }
    #   }
    # }
  let(:com) {OoTalk::Compound.new(n_eq_5, OoTalk::Compound.new(s_eq_1,OoTalk::Compound.new(lp,var_s)))}

    it 'should be initialized properly' do
      expect(com).to_not be_nil
    end
   
    it 'should execute exec properly' do
      #5 の階乗を計算する結果
       expect(com.exec).to be 120
    end

    it 'should execute to_s properly' do
      #5 の階乗（式列の表示）
      expect(com.to_s).to eq "{n=5; {s=1; {while true do\n  break unless (n>0)\n  s=(s*n)\n  n=(n-1)\nend; s}}}"
    end
end

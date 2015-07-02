require 'spec_helper'
require 'ootalk/decrement'


describe 'Decrement class' do
    var_dec = OoTalk::Variable.new('dec')
    cons_10 = OoTalk::Constant.new(10)
    ass_dec_10 = OoTalk::Assignment.new(var_dec, cons_10)
    ass_dec_10.exec
    cons_1 = OoTalk::Constant.new(1)
    dec_1 = OoTalk::Decrement.new(var_dec, cons_1)

  it "new" do
    expect(dec_1).to_not be_nil
  end

  it "exec" do
    expect(dec_1.exec).to eq(9)
    expect(dec_1.exec).to eq(8)
    expect(dec_1.exec).to eq(7)
  end

  it "to_s" do
    expect(dec_1.to_s.length).to be >= 0
  end
end

require 'spec_helper'
require 'ootalk/increment'


describe 'Increment class' do
    var_inc = OoTalk::Variable.new('inc')
    cons_0 = OoTalk::Constant.new(0)
    ass_inc_0 = OoTalk::Assignment.new(var_inc, cons_0)
    ass_inc_0.exec
    cons_1 = OoTalk::Constant.new(1)
    inc_1 = OoTalk::Increment.new(var_inc, cons_1)

  it "new" do
    expect(inc_1).to_not be_nil
  end

  it "exec" do
    expect(inc_1.exec).to eq(1)
    expect(inc_1.exec).to eq(2)
    expect(inc_1.exec).to eq(3)
  end

  it "to_s" do
    expect(inc_1.to_s.length).to be >= 0
  end
end

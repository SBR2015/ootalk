require 'spec_helper'
require 'ootalk'

describe "Ootalk::Conditional class" do
  var = OoTalk::Variable.new('a')
  ass = OoTalk::Assignment.new(var, OoTalk::Constant.new(1))

  equal_1 = OoTalk::EqualTo.new(var, OoTalk::Constant.new(1))
  not_equal_1 = OoTalk::NotEqual.new(var, OoTalk::Constant.new(1))

  increment = OoTalk::Assignment.new(var, OoTalk::Add.new(var, OoTalk::Constant.new(1)))
  decrement = OoTalk::Assignment.new(var, OoTalk::Substract.new(var, OoTalk::Constant.new(1)))

  cond1 = OoTalk::Conditional.new(equal_1, increment)
  cond2 = OoTalk::Conditional.new(not_equal_1, increment, decrement)
  cond3 = OoTalk::Conditional.new(not_equal_1, increment)

  before :each do
    ass.exec
  end

  it "should be initialized properly" do
    expect(cond1).to_not be_nil
    expect(cond2).to_not be_nil
  end

  it "should execute then_branch properly" do
    # a = 1; if a == 1 then a += 1
    cond1.exec
    expect(var.exec).to be 2
  end

  it "should execute else_branch properly" do
    # a = 1; if a != 1 then a += 1 else a -= 1
    cond2.exec
    expect(var.exec).to be 0
  end
  
  it "should do nothing when there's no else_branch" do
    # a = 1; if a != 1 then a += 1
    cond3.exec
    expect(var.exec).to be 1
  end

  it "should execute properly" do
    expect(cond1.to_s).to eq("if (a==1)\n\ta=(a+1)\nend")
    expect(cond2.to_s).to eq("if (a!=1)\n\ta=(a+1)\nelse\n\ta=(a-1)\nend")
  end
end

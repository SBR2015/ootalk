require 'spec_helper'
require 'ootalk/loop'
require 'ootalk/constant'
require 'ootalk/less_than'
require 'ootalk/add'
require 'ootalk/substract'
require 'ootalk/variable'
require 'ootalk/assignment'

describe 'Loop' do
  it 'new' do
    lp = OoTalk::Loop.new(nil,nil,nil)
    expect(lp).to_not be_nil
  end

  it 'exec' do
    #i = 0
    #while (i < 3) do
    #    a += 10
    #end
    #a => 30
    cons3 = OoTalk::Constant.new(3)
    cons10 = OoTalk::Constant.new(10)

    # i = 0
    val_i = OoTalk::Variable.new('i')
    cons0 = OoTalk::Constant.new(0)
    OoTalk::Assignment.new(val_i, cons0).exec
    # i + 1
    cons1 = OoTalk::Constant.new(1)
    add = OoTalk::Add.new(val_i, cons1)
    # i = i + 1
    assign = OoTalk::Assignment.new(val_i, add)
    # i < 3
    less_than = OoTalk::LessThan.new(val_i, cons3)
    # a = 0
    val_a = OoTalk::Variable.new('a')
    OoTalk::Assignment.new(val_a, cons0).exec
    # a = a + 10
    add = OoTalk::Add.new(val_a, cons10)
    results = OoTalk::Assignment.new(val_a, add)
    lp = OoTalk::Loop.new(less_than, results, assign)
    lp.exec
    expect(val_a.exec).to be 30
  end
end

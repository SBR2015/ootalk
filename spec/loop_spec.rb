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
    #while (x < 3) do
    #    y += 10
    #end
    #y => 30
    cons3 = OoTalk::Constant.new(3)
    cons10 = OoTalk::Constant.new(10)

    # x = 0
    val_x = OoTalk::Variable.new('x')
    cons0 = OoTalk::Constant.new(0)
    OoTalk::Assignment.new(val_x, cons0).exec
    # x + 1
    cons1 = OoTalk::Constant.new(1)
    add = OoTalk::Add.new(val_x, cons1)
    # x = x + 1
    assign = OoTalk::Assignment.new(val_x, add)
    # x < 3
    less_than = OoTalk::LessThan.new(val_x, cons3)
    # y = 0
    val_y = OoTalk::Variable.new('y')
    OoTalk::Assignment.new(val_y, cons0).exec
    # y = y + 10
    add = OoTalk::Add.new(val_y, cons10)
    results = OoTalk::Assignment.new(val_y, add)
    lp = OoTalk::Loop.new(less_than, results, assign)
    lp.exec
    expect(val_y.exec).to be 30
  end
end

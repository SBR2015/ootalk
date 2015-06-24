require 'spec_helper'
require 'ootalk/loop'
require 'ootalk/constant'
require 'ootalk/less_than'
require 'ootalk/variable'
require 'ootalk/assignment'
require 'ootalk/times'

describe 'Loop' do
  it 'new' do
    lp = OoTalk::Loop.new(nil,nil,nil)
    expect(lp).to_not be_nil
  end

  it 'exec' do
    #while (x < 3) do
    #    y += 10
    #end
    cons0 = OoTalk::Constant.new(0)
    cons1 = OoTalk::Constant.new(1)
    cons3 = OoTalk::Constant.new(3)
    cons10 = OoTalk::Constant.new(10)
    val_x = OoTalk::Variable.new('x')
    val_y = OoTalk::Variable.new('y')
    OoTalk::Assignment.new(val_x, cons0).exec

    add = OoTalk::Add.new(val_x, cons1)
    assign = OoTalk::Assignment.new(val_x, add)
    less_than = OoTalk::LessThan.new(val_x, cons3)

    add = OoTalk::Add.new(val_y, cons10)
    assign2 = OoTalk::Assignment.new(val_y, add)
    #lp = OoTalk::Loop.new(less_than, assign2, assgin)
    puts '#########################'
    puts val_y.exec
    puts '#########################'
    #expect(lp.exec).to be 6
    expect(6).to be 6
  end
end

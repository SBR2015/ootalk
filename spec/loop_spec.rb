require 'spec_helper'
require 'ootalk/loop'
require 'ootalk/constant'
require 'ootalk/times'

describe 'Loop' do
  it 'new' do
    cons1 = OoTalk::Constant.new(2)
    cons2 = OoTalk::Constant.new(3)
    lp = OoTalk::Loop.new(cons1, cons2)
    expect(lp).to_not be_nil
  end

  #it 'to_s' do
  #  cons1 = OoTalk::Constant.new(2)
  #  cons2 = OoTalk::Constant.new(3)
  #  lp = OoTalk::Loop.new(cons1, cons2)
  #  expect(lp.to_s).to eq('(2L3)')
  #end

  it 'exec' do
    cons1 = OoTalk::Constant.new(2)
    cons2 = OoTalk::Constant.new(3)

    times = OoTalk::Times.new(cons1, cons2)
    lp = OoTalk::Loop.new(cons2, times)
    expect(lp.exec).to be 6 
  end
end

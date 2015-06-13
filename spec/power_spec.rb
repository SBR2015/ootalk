require 'spec_helper'
require 'ootalk/power'

describe 'powers' do
  it 'new' do
    cons1 = OoTalk::Constant.new(1)
    cons2 = OoTalk::Constant.new(2)
    powers = OoTalk::Power.new(cons1, cons2)
    expect(powers).to_not be_nil
  end

  it 'exec' do
    cons1 = OoTalk::Constant.new(1)
    cons2 = OoTalk::Constant.new(2)
    cons3 = OoTalk::Constant.new(3)
    cons4 = OoTalk::Constant.new(0)

    powers1 = OoTalk::Power.new(cons1, cons2)
    powers2 = OoTalk::Power.new(cons2, cons3)
    powers3 = OoTalk::Power.new(cons3, cons4)

    expect(powers1.exec).to be 1
    expect(powers2.exec).to be 8
    expect(powers3.exec).to be 1
  end
end

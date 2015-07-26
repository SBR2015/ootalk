require 'spec_helper'
require 'ootalk/subtract'

describe 'subtract' do
  it 'new' do
    cons1 = OoTalk::Constant.new(5)
    cons2 = OoTalk::Constant.new(4)
    subtract = OoTalk::Subtract.new(cons1, cons2)
    expect(subtract).to_not be_nil
  end

  it 'exec' do
    cons1 = OoTalk::Constant.new(5)
    cons2 = OoTalk::Constant.new(4)
    cons3 = OoTalk::Constant.new(1)

    subtract1 = OoTalk::Subtract.new(cons1, cons2)
    subtract2 = OoTalk::Subtract.new(cons2, cons3)

    expect(subtract1.exec).to be 1
    expect(subtract2.exec).to be 3
  end
end

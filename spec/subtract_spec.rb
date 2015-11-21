require 'spec_helper'
require 'ootalk/subtract'

describe 'subtract' do
  it 'new' do
    cons1 = Ootalk::Constant.new(5)
    cons2 = Ootalk::Constant.new(4)
    subtract = Ootalk::Subtract.new(cons1, cons2)
    expect(subtract).to_not be_nil
  end

  it 'exec' do
    cons1 = Ootalk::Constant.new(5)
    cons2 = Ootalk::Constant.new(4)
    cons3 = Ootalk::Constant.new(1)

    subtract1 = Ootalk::Subtract.new(cons1, cons2)
    subtract2 = Ootalk::Subtract.new(cons2, cons3)

    expect(subtract1.exec).to be 1
    expect(subtract2.exec).to be 3
  end
end

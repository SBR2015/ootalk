require 'spec_helper'
require 'ootalk/add'

describe 'Add' do
  it 'new' do
    cons1 = OoTalk::Constant.new(1)
    cons2 = OoTalk::Constant.new(2)
    add = OoTalk::Add.new(cons1, cons2)
    expect(add).to_not be_nil
  end

  it 'exec' do
    cons1 = OoTalk::Constant.new(1)
    cons2 = OoTalk::Constant.new(2)
    cons3 = OoTalk::Constant.new(3)

    add1 = OoTalk::Add.new(cons1, cons2)
    add2 = OoTalk::Add.new(cons2, cons3)

    expect(add1.exec).to be 3
    expect(add2.exec).to be 5
  end
end

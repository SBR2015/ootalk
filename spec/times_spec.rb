require 'spec_helper'
require 'ootalk/times'

describe 'times' do
  it 'new' do
    cons1 = OoTalk::Constant.new(1)
    cons2 = OoTalk::Constant.new(2)
    times = OoTalk::Times.new(cons1, cons2)
    expect(times).to_not be_nil
  end

  it 'exec' do
    cons1 = OoTalk::Constant.new(1)
    cons2 = OoTalk::Constant.new(2)
    cons3 = OoTalk::Constant.new(3)

    times = OoTalk::Times.new(cons1, cons2)
    times2 = OoTalk::Times.new(cons2, cons3)

    expect(times.exec).to be 2
    expect(times2.exec).to be 6
  end
end

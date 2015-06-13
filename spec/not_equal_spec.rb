require 'spec_helper'
require 'ootalk/not_equal'

describe 'NotEqual' do
  it 'new' do
    neq = OoTalk::NotEqual.new(OoTalk::Constant.new(1), OoTalk::Constant.new(2))
    expect(neq).to_not be_nil
  end

  it 'to_s' do
    neq = OoTalk::NotEqual.new(OoTalk::Constant.new(1), OoTalk::Constant.new(2))
    expect(neq.to_s.length).to be >= 0
  end

  it 'exec' do
    neq = OoTalk::NotEqual.new(OoTalk::Constant.new(1), OoTalk::Constant.new(2))
    expect(neq.exec).to be_truthy
    neq = OoTalk::NotEqual.new(OoTalk::Constant.new(2), OoTalk::Constant.new(1))
    expect(neq.exec).to be_truthy
    neq = OoTalk::NotEqual.new(OoTalk::Constant.new(1), OoTalk::Constant.new(1))
    expect(neq.exec).to be_falsey
    neq = OoTalk::NotEqual.new(OoTalk::Constant.new(2), OoTalk::Constant.new(2))
    expect(neq.exec).to be_falsey
  end
end

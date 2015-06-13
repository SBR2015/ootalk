require 'spec_helper'
require 'ootalk/or'

describe 'Or' do
  it 'new' do
    o = OoTalk::Or.new(OoTalk::Constant.new(true), OoTalk::Constant.new(false))
    expect(o).to_not be_nil
  end

  it 'to_s' do
    o = OoTalk::Or.new(OoTalk::Constant.new(true), OoTalk::Constant.new(false))
    expect(o.to_s.length).to be >= 0
  end

  it 'exec' do
    o = OoTalk::Or.new(OoTalk::Constant.new(true), OoTalk::Constant.new(true))
    expect(o.exec).to be_truthy
    o = OoTalk::Or.new(OoTalk::Constant.new(true), OoTalk::Constant.new(false))
    expect(o.exec).to be_truthy
    o = OoTalk::Or.new(OoTalk::Constant.new(false), OoTalk::Constant.new(true))
    expect(o.exec).to be_truthy
    o = OoTalk::Or.new(OoTalk::Constant.new(false), OoTalk::Constant.new(false))
    expect(o.exec).to be_falsey
  end
end

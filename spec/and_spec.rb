require 'spec_helper'
require 'ootalk/and'

describe 'And' do
  it 'new' do
    a = OoTalk::And.new(OoTalk::Constant.new(true), OoTalk::Constant.new(false))
    expect(a).to_not be_nil
  end

  it 'to_s' do
    a = OoTalk::And.new(OoTalk::Constant.new(true), OoTalk::Constant.new(false))
    expect(a.to_s.length).to be >= 0
  end

  it 'exec' do
    a = OoTalk::And.new(OoTalk::Constant.new(true), OoTalk::Constant.new(true))
    expect(a.exec).to be_truthy
    a = OoTalk::And.new(OoTalk::Constant.new(true), OoTalk::Constant.new(false))
    expect(a.exec).to be_falsey
    a = OoTalk::And.new(OoTalk::Constant.new(false), OoTalk::Constant.new(true))
    expect(a.exec).to be_falsey
    a = OoTalk::And.new(OoTalk::Constant.new(false), OoTalk::Constant.new(false))
    expect(a.exec).to be_falsey
  end
end

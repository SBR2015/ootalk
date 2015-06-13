require 'spec_helper'
require 'ootalk/not_and'

describe 'NotAnd' do
  it 'new' do
    na = OoTalk::Nand.new(OoTalk::Constant.new(true), OoTalk::Constant.new(false))
    expect(na).to_not be_nil
  end

  it 'to_s' do
    na = OoTalk::Nand.new(OoTalk::Constant.new(true), OoTalk::Constant.new(false))
    expect(na.to_s.length).to be >= 0
  end

  it 'exec' do
    na = OoTalk::Nand.new(OoTalk::Constant.new(true), OoTalk::Constant.new(true))
    expect(na.exec).to be_falsey
    na = OoTalk::Nand.new(OoTalk::Constant.new(true), OoTalk::Constant.new(false))
    expect(na.exec).to be_truthy
    na = OoTalk::Nand.new(OoTalk::Constant.new(false), OoTalk::Constant.new(true))
    expect(na.exec).to be_truthy
    na = OoTalk::Nand.new(OoTalk::Constant.new(false), OoTalk::Constant.new(false))
    expect(na.exec).to be_truthy
  end
end

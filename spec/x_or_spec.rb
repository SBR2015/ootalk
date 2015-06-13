require 'spec_helper'
require 'ootalk/x_or'

describe 'XOr' do
  it 'new' do
    xo = OoTalk::Xor.new(OoTalk::Constant.new(true), OoTalk::Constant.new(false))
    expect(xo).to_not be_nil
  end

  it 'to_s' do
    xo = OoTalk::Xor.new(OoTalk::Constant.new(true), OoTalk::Constant.new(false))
    expect(xo.to_s.length).to be >= 0
  end

  it 'exec' do
    xo = OoTalk::Xor.new(OoTalk::Constant.new(true), OoTalk::Constant.new(true))
    expect(xo.exec).to be_falsey
    xo = OoTalk::Xor.new(OoTalk::Constant.new(true), OoTalk::Constant.new(false))
    expect(xo.exec).to be_truthy
    xo = OoTalk::Xor.new(OoTalk::Constant.new(false), OoTalk::Constant.new(true))
    expect(xo.exec).to be_truthy
    xo = OoTalk::Xor.new(OoTalk::Constant.new(false), OoTalk::Constant.new(false))
    expect(xo.exec).to be_falsey
  end
end

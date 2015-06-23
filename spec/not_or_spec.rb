require 'spec_helper'
require 'ootalk/not_or'

describe 'NotOr' do
  it 'new' do
    no = OoTalk::Nor.new(OoTalk::Constant.new(true), OoTalk::Constant.new(false))
    expect(no).to_not be_nil
  end

  it 'to_s' do
    no = OoTalk::Nor.new(
      OoTalk::Constant.new(true),
      OoTalk::Constant.new(false)
    )
    expect(no.to_s.length).to be >= 0
  end

  it 'exec' do
    no = OoTalk::Nor.new(
      OoTalk::Constant.new(true),
      OoTalk::Constant.new(true)
    )
    expect(no.exec).to be_falsey
    no = OoTalk::Nor.new(
      OoTalk::Constant.new(true),
      OoTalk::Constant.new(false)
    )
    expect(no.exec).to be_falsey
    no = OoTalk::Nor.new(
      OoTalk::Constant.new(false),
      OoTalk::Constant.new(true)
    )
    expect(no.exec).to be_falsey
    no = OoTalk::Nor.new(
      OoTalk::Constant.new(false),
      OoTalk::Constant.new(false)
    )
    expect(no.exec).to be_truthy
  end
end

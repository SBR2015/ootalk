require 'spec_helper'
require 'ootalk/less_than_or_equal_to'

describe 'LessThanOrEqualTo' do
  it 'new' do
    le = OoTalk::LessThanOrEqualTo.new(OoTalk::Constant.new(1), OoTalk::Constant.new(2))
    expect(le).to_not be_nil
  end

  it 'to_s' do
    le = OoTalk::LessThanOrEqualTo.new(OoTalk::Constant.new(1), OoTalk::Constant.new(2))
    expect(le.to_s.length).to be >= 0
  end

  it 'exec' do
    le = OoTalk::LessThanOrEqualTo.new(OoTalk::Constant.new(1), OoTalk::Constant.new(2))
    expect(le.exec).to be_truthy
    le = OoTalk::LessThanOrEqualTo.new(OoTalk::Constant.new(2), OoTalk::Constant.new(1))
    expect(le.exec).to be_falsey
    le = OoTalk::LessThanOrEqualTo.new(OoTalk::Constant.new(2), OoTalk::Constant.new(2))
    expect(le.exec).to be_truthy
  end
end

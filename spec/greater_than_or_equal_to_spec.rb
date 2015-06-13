require 'spec_helper'
require 'ootalk/greater_than_or_equal_to'

describe 'GreaterThanOrEqualTo relation' do
  it 'should execute properly' do
    ge1 = OoTalk::GreaterThanOrEqualTo.new(OoTalk::Constant.new(1), OoTalk::Constant.new(2))
    expect(ge1.exec).to be_falsey
    ge2 = OoTalk::GreaterThanOrEqualTo.new(OoTalk::Constant.new(2), OoTalk::Constant.new(1))
    expect(ge2.exec).to be_truthy
    ge3 = OoTalk::GreaterThanOrEqualTo.new(OoTalk::Constant.new(1), OoTalk::Constant.new(1))
    expect(ge3.exec).to be_truthy
  end
end

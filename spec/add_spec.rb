require 'spec_helper'
require 'ootalk/add'

describe 'Add' do
  let(:add1) {OoTalk::Add.new(OoTalk::Constant.new(1), OoTalk::Constant.new(2))}
  let(:add2) {OoTalk::Add.new(OoTalk::Constant.new(2), OoTalk::Constant.new(3))}

  it 'new' do
    expect(add1).to_not be_nil
    expect(add1).to_not be_nil
    expect(add2).to_not be_nil
  end
  it 'initialize' do
    expect(add1).to_not be_nil
    expect(add2).to_not be_nil
  end

  it 'exec' do
    expect(add1.exec).to be 3
    expect(add2.exec).to be 5
  end
end

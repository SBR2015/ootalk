require 'spec_helper'
require 'ootalk/not_and'

describe 'NotAnd' do
  it 'new' do
    na = Ootalk::Nand.new(Ootalk::Constant.new(true), Ootalk::Constant.new(false))
    expect(na).to_not be_nil
  end

  it 'to_s' do
    na = Ootalk::Nand.new(Ootalk::Constant.new(true), Ootalk::Constant.new(false))
    expect(na.to_s.length).to be >= 0
  end

  it 'exec' do
    na = Ootalk::Nand.new(Ootalk::Constant.new(true), Ootalk::Constant.new(true))
    expect(na.exec).to be_falsey
    na = Ootalk::Nand.new(Ootalk::Constant.new(true), Ootalk::Constant.new(false))
    expect(na.exec).to be_truthy
    na = Ootalk::Nand.new(Ootalk::Constant.new(false), Ootalk::Constant.new(true))
    expect(na.exec).to be_truthy
    na = Ootalk::Nand.new(Ootalk::Constant.new(false), Ootalk::Constant.new(false))
    expect(na.exec).to be_truthy
    na = Ootalk::Nand.new(Ootalk::Constant.new(0), Ootalk::Constant.new(0))
    expect(na.exec).to be_truthy
  end
end

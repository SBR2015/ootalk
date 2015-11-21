require 'spec_helper'
require 'ootalk/x_or'

describe 'XOr' do
  it 'new' do
    xo = Ootalk::Xor.new(Ootalk::Constant.new(true), Ootalk::Constant.new(false))
    expect(xo).to_not be_nil
  end

  it 'to_s' do
    xo = Ootalk::Xor.new(Ootalk::Constant.new(true), Ootalk::Constant.new(false))
    expect(xo.to_s.length).to be >= 0
  end

  it 'exec' do
    xo = Ootalk::Xor.new(Ootalk::Constant.new(true), Ootalk::Constant.new(true))
    expect(xo.exec).to be_falsey
    xo = Ootalk::Xor.new(Ootalk::Constant.new(true), Ootalk::Constant.new(false))
    expect(xo.exec).to be_truthy
    xo = Ootalk::Xor.new(Ootalk::Constant.new(false), Ootalk::Constant.new(true))
    expect(xo.exec).to be_truthy
    xo = Ootalk::Xor.new(Ootalk::Constant.new(false), Ootalk::Constant.new(false))
    expect(xo.exec).to be_falsey
  end
end

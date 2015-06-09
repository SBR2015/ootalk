require 'spec_helper'
require_relative '../lib/x_or.rb'
require_relative '../lib/constant.rb'

describe 'XOr' do
  it "new" do
    xo = Xor.new(Constant.new(true), Constant.new(false))
    expect(xo).to_not be_nil
  end

  it "to_s" do
    xo = Xor.new(Constant.new(true), Constant.new(false))
    expect(xo.to_s.length).to be >= 0
  end

  it "exec" do
    xo = Xor.new(Constant.new(true), Constant.new(true))
    expect(xo.exec).to be_falsey
    xo = Xor.new(Constant.new(true), Constant.new(false))
    expect(xo.exec).to be_truthy
    xo = Xor.new(Constant.new(false), Constant.new(true))
    expect(xo.exec).to be_truthy
    xo = Xor.new(Constant.new(false), Constant.new(false))
    expect(xo.exec).to be_falsey
  end

end

require 'spec_helper'
require_relative '../lib/not_and.rb'
require_relative '../lib/constant.rb'

describe 'NotAnd' do
  it "new" do
    na = Nand.new(Constant.new(true), Constant.new(false))
    expect(na).to_not be_nil
  end

  it "to_s" do
    na = Nand.new(Constant.new(true), Constant.new(false))
    expect(na.to_s.length).to be >= 0
  end

  it "exec" do
    na = Nand.new(Constant.new(true), Constant.new(true))
    expect(na.exec).to be_falsey
    na = Nand.new(Constant.new(true), Constant.new(false))
    expect(na.exec).to be_truthy
    na = Nand.new(Constant.new(false), Constant.new(true))
    expect(na.exec).to be_truthy
    na = Nand.new(Constant.new(false), Constant.new(false))
    expect(na.exec).to be_truthy
  end

end

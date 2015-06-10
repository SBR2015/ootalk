require 'spec_helper'
require_relative '../lib/or.rb'
require_relative '../lib/constant.rb'

describe 'Or' do
  it "new" do
    o = Or.new(Constant.new(true), Constant.new(false))
    expect(o).to_not be_nil
  end

  it "to_s" do
    o = Or.new(Constant.new(true), Constant.new(false))
    expect(o.to_s.length).to be >= 0
  end

  it "exec" do
    o = Or.new(Constant.new(true), Constant.new(true))
    expect(o.exec).to be_truthy
    o = Or.new(Constant.new(true), Constant.new(false))
    expect(o.exec).to be_truthy
    o = Or.new(Constant.new(false), Constant.new(true))
    expect(o.exec).to be_truthy
    o = Or.new(Constant.new(false), Constant.new(false))
    expect(o.exec).to be_falsey
  end

end

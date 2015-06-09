require 'spec_helper'
require_relative '../lib/not_equal.rb'
require_relative '../lib/constant.rb'

describe 'NotEqual' do
  it "new" do
    neq = NotEqual.new(Constant.new(1), Constant.new(2))
    expect(neq).to_not be_nil
  end

  it "to_s" do
    neq = NotEqual.new(Constant.new(1), Constant.new(2))
    expect(neq.to_s.length).to be >= 0
  end

  it "exec" do
    neq = NotEqual.new(Constant.new(1), Constant.new(2))
    expect(neq.exec).to be_truthy
    neq = NotEqual.new(Constant.new(2), Constant.new(1))
    expect(neq.exec).to be_truthy
    neq = NotEqual.new(Constant.new(1), Constant.new(1))
    expect(neq.exec).to be_falsey
    neq = NotEqual.new(Constant.new(2), Constant.new(2))
    expect(neq.exec).to be_falsey
  end

end

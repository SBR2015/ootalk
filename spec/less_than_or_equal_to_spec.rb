require 'spec_helper'
require_relative '../lib/less_than_or_equal_to.rb'
require_relative '../lib/constant.rb'

describe 'LessThanOrEqualTo' do
  it "new" do
    le = LessThanOrEqualTo.new(Constant.new(1), Constant.new(2))
    expect(le).to_not be_nil
  end

  it "to_s" do
    le = LessThanOrEqualTo.new(Constant.new(1), Constant.new(2))
    expect(le.to_s.length).to be >= 0
  end

  it "exec" do
    le = LessThanOrEqualTo.new(Constant.new(1), Constant.new(2))
    expect(le.exec).to be_truthy
    le = LessThanOrEqualTo.new(Constant.new(2), Constant.new(1))
    expect(le.exec).to be_falsey
    le = LessThanOrEqualTo.new(Constant.new(2), Constant.new(2))
    expect(le.exec).to be_truthy
  end

end

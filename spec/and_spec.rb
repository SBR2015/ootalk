require 'spec_helper'
require_relative '../lib/and.rb'
require_relative '../lib/constant.rb'

describe 'And' do
  it "new" do
    a = And.new(Constant.new(true), Constant.new(false))
    expect(a).to_not be_nil
  end

  it "to_s" do
    a = And.new(Constant.new(true), Constant.new(false))
    expect(a.to_s.length).to be >= 0
  end

  it "exec" do
    a = And.new(Constant.new(true), Constant.new(true))
    expect(a.exec).to be_truthy
    a = And.new(Constant.new(true), Constant.new(false))
    expect(a.exec).to be_falsey
    a = And.new(Constant.new(false), Constant.new(true))
    expect(a.exec).to be_falsey
    a = And.new(Constant.new(false), Constant.new(false))
    expect(a.exec).to be_falsey
  end

end

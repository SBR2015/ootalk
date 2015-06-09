require 'spec_helper'
require_relative '../lib/not_or.rb'
require_relative '../lib/constant.rb'

describe 'NotOr' do
  it "new" do
    no = Nor.new(Constant.new(true), Constant.new(false))
    expect(no).to_not be_nil
  end

  it "to_s" do
    no = Nor.new(Constant.new(true), Constant.new(false))
    expect(no.to_s.length).to be >= 0
  end

  it "exec" do
    no = Nor.new(Constant.new(true), Constant.new(true))
    expect(no.exec).to be_falsey
    no = Nor.new(Constant.new(true), Constant.new(false))
    expect(no.exec).to be_falsey
    no = Nor.new(Constant.new(false), Constant.new(true))
    expect(no.exec).to be_falsey
    no = Nor.new(Constant.new(false), Constant.new(false))
    expect(no.exec).to be_truthy
  end

end

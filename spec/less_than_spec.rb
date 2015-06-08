require 'spec_helper'
require_relative '../lib/relationalop.rb'
require_relative '../lib/less_than.rb'
require_relative '../lib/constant.rb'

describe 'LessThan' do
  it "new" do
    lt = LessThan.new(Constant.new(1), Constant.new(2))
    expect(lt).to_not be_nil
  end

  it "to_s" do
    lt = LessThan.new(Constant.new(1), Constant.new(2))
    expect(lt.to_s.length).to be >= 0
  end

  it "exec" do
    lt = LessThan.new(Constant.new(1), Constant.new(2))
    expect(lt.exec).to be_truthy
    lt = LessThan.new(Constant.new(2), Constant.new(1))
    expect(lt.exec).to be_falsey
  end

end

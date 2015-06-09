require 'spec_helper'
require_relative '../lib/boolean_op.rb'

describe 'Boolean Operator' do
  it "new" do
    bop = BooleanOp.new
    expect(op).to_not be_nil
  end

  it "to_s" do
    bop = BooleanlOp.new
    expect(op.to_s.length).to be >= 0
  end

end

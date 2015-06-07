require 'spec_helper'
require_relative '../lib/relationalop.rb'

describe 'Relational Operator' do
  it "new" do
    op = RelationalOp.new
    expect(op).to_not be_nil
  end

  it "to_s" do
    op = RelationalOp.new
    expect(op.to_s.length).to be >= 0
  end

end

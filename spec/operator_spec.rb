require 'spec_helper'
require_relative '../lib/operator.rb'

describe 'Operator' do
  it "new" do
    op = Operator.new
    expect(op).to_not be_nil
  end

  it "to_s" do
    op = Operator.new(1,2)
    expect(op.to_s).to eq("(1?2)")
  end

end

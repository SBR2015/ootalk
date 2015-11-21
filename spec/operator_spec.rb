require 'spec_helper'
require 'ootalk/operator'

describe 'Operator' do
  it 'new' do
    op = Ootalk::Operator.new
    expect(op).to_not be_nil
  end

  it 'to_s' do
    op = Ootalk::Operator.new(1, 2)
    expect(op.to_s).to eq('(1?2)')
  end
end

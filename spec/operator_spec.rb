require 'spec_helper'
require 'ootalk/operator'

describe 'Operator' do
  it 'new' do
    op = OoTalk::Operator.new
    expect(op).to_not be_nil
  end

  it 'to_s' do
    op = OoTalk::Operator.new(1, 2)
    expect(op.to_s).to eq('(1?2)')
  end
end

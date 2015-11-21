require 'spec_helper'
require 'ootalk'

describe 'Instruction class' do
  it 'should be initialized properly' do
    ins = Ootalk::Instruction.new
    expect(ins).to_not be_nil
  end
end

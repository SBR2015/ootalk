require 'spec_helper'
require 'ootalk/or'

describe 'Or' do
  it 'new' do
    o = Ootalk::Or.new(Ootalk::Constant.new(true), Ootalk::Constant.new(false))
    expect(o).to_not be_nil
  end

  it 'to_s' do
    o = Ootalk::Or.new(Ootalk::Constant.new(true), Ootalk::Constant.new(false))
    expect(o.to_s.length).to be >= 0
  end

  it 'exec' do
    o = Ootalk::Or.new(Ootalk::Constant.new(true), Ootalk::Constant.new(true))
    expect(o.exec).to be_truthy
    o = Ootalk::Or.new(Ootalk::Constant.new(true), Ootalk::Constant.new(false))
    expect(o.exec).to be_truthy
    o = Ootalk::Or.new(Ootalk::Constant.new(false), Ootalk::Constant.new(true))
    expect(o.exec).to be_truthy
    o = Ootalk::Or.new(Ootalk::Constant.new(false), Ootalk::Constant.new(false))
    expect(o.exec).to be_falsey
  end
end

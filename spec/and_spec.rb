require 'spec_helper'
require 'ootalk/and'

describe 'And' do
  it 'new' do
    a = Ootalk::And.new(Ootalk::Constant.new(true), Ootalk::Constant.new(false))
    expect(a).to_not be_nil
  end

  it 'to_s' do
    a = Ootalk::And.new(Ootalk::Constant.new(true), Ootalk::Constant.new(false))
    expect(a.to_s.length).to be >= 0
  end

  it 'exec' do
    a = Ootalk::And.new(Ootalk::Constant.new(true), Ootalk::Constant.new(true))
    expect(a.exec).to be_truthy
    a = Ootalk::And.new(Ootalk::Constant.new(true), Ootalk::Constant.new(false))
    expect(a.exec).to be_falsey
    a = Ootalk::And.new(Ootalk::Constant.new(false), Ootalk::Constant.new(true))
    expect(a.exec).to be_falsey
    a = Ootalk::And.new(Ootalk::Constant.new(false), Ootalk::Constant.new(false))
    expect(a.exec).to be_falsey
  end
end

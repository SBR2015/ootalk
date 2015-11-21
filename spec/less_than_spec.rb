require 'spec_helper'
require 'ootalk/less_than'

describe 'LessThan' do
  it 'new' do
    lt = Ootalk::LessThan.new(Ootalk::Constant.new(1), Ootalk::Constant.new(2))
    expect(lt).to_not be_nil
  end

  it 'to_s' do
    lt = Ootalk::LessThan.new(Ootalk::Constant.new(1), Ootalk::Constant.new(2))
    expect(lt.to_s.length).to be >= 0
  end

  it 'exec' do
    lt = Ootalk::LessThan.new(Ootalk::Constant.new(1), Ootalk::Constant.new(2))
    expect(lt.exec).to be_truthy
    lt = Ootalk::LessThan.new(Ootalk::Constant.new(2), Ootalk::Constant.new(1))
    expect(lt.exec).to be_falsey
  end
end

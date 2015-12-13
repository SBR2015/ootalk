require 'spec_helper'
require 'ootalk/not_or'

describe 'NotOr' do
  it 'new' do
    no = Ootalk::Nor.new(Ootalk::Constant.new(true), Ootalk::Constant.new(false))
    expect(no).to_not be_nil
  end

  it 'to_s' do
    no = Ootalk::Nor.new(
      Ootalk::Constant.new(true),
      Ootalk::Constant.new(false)
    )
    expect(no.to_s.length).to be >= 0
  end

  it 'exec' do
    no = Ootalk::Nor.new(
      Ootalk::Constant.new(true),
      Ootalk::Constant.new(true)
    )
    expect(no.exec).to be_falsey
    no = Ootalk::Nor.new(
      Ootalk::Constant.new(true),
      Ootalk::Constant.new(false)
    )
    expect(no.exec).to be_falsey
    no = Ootalk::Nor.new(
      Ootalk::Constant.new(false),
      Ootalk::Constant.new(true)
    )
    expect(no.exec).to be_falsey

    no = Ootalk::Nor.new(
      Ootalk::Constant.new(false),
      Ootalk::Constant.new(false)
    )
    expect(no.exec).to be_truthy

    no = Ootalk::Nor.new(
      Ootalk::Constant.new(0),
      Ootalk::Constant.new(0)
    )
    expect(no.exec).to be_truthy

    no = Ootalk::Nor.new(
      Ootalk::Constant.new("test"),
      Ootalk::Constant.new("test2")
    )
    expect(no.exec).to be_falsey
  end
end

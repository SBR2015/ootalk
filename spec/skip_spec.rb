require 'spec_helper'
require 'ootalk/skip'

describe 'OoTalk::Skip' do
  it 'new' do
    cmt = OoTalk::Skip.new('This is a comment')
    expect(cmt).to_not be_nil
  end

  it 'exec' do
    cmt = OoTalk::Skip.new('This is a comment')
    expect(cmt.exec).to be_nil
  end

  it 'to_s' do
    cmt = OoTalk::Skip.new('This is a comment')
    expect(cmt.to_s).to eq('# This is a comment')
  end
end

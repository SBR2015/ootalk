require 'spec_helper'
require 'ootalk/skip'

describe 'Ootalk::Skip' do
  it 'new' do
    cmt = Ootalk::Skip.new('This is a comment')
    expect(cmt).to_not be_nil
  end

  it 'exec' do
    cmt = Ootalk::Skip.new('This is a comment')
    expect(cmt.exec).to be_nil
  end

  it 'to_s' do
    cmt = Ootalk::Skip.new('This is a comment')
    expect(cmt.to_s).to eq('# This is a comment')
  end
end

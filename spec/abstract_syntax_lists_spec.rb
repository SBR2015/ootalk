require 'spec_helper'
require 'ootalk/abstract_syntax_lists'

describe 'AbstractSyntaxLists' do
  it 'should be able to use create methods' do
    expect(OoTalk::AbstractSyntaxLists.create(:ja)).to be_truthy
  end

  it 'should be invalid locales' do
    expect { OoTalk::AbstractSyntaxLists.create('fooooooo') }.to raise_error(I18n::InvalidLocale)
  end

  it "shouldn't be exist" do
    expect { OoTalk::AbstractSyntaxLists.create(:ar) }.to raise_error(I18n::InvalidLocale)
  end
end

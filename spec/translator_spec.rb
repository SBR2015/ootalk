require_relative '../lib/translator'

describe 'Translator test' do
  it '日本語コードが実行されること' do
    result = Translator.run do |input|
      input.language = 'ja'
      input.text = 'aは3。もしaが3なら表示する"Three"を。返す"Three"'
    end
    expect(result).to eq "Three"
  end
end


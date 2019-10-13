require './lib/split_price'

describe 'split_price' do
  let(:manyen) { '110.0万円'}
  let(:yen) { '2015円'}
  let(:comma) { '1,123,456円'}
  let(:hyphen) { '110 - 120万円'}
  let(:zenkaku) { '２０１５円'}
  let(:jponly) { '価格未定'}
  let(:blank) { nil }

  it 'split_price動作確認' do
    expect(split_price(manyen)).to eq(['110.0', '万円'])
    expect(split_price(yen)).to eq(['2015', '円'])
    expect(split_price(comma)).to eq(['1,123,456', '円'])
    expect(split_price(hyphen)).to eq(['110 - 120', '万円'])
    expect(split_price(zenkaku)).to eq(['２０１５', '円'])
    expect(split_price(jponly)).to eq(['価格未定', ''] )
    expect(split_price(blank)).to eq(['', ''])
  end
end
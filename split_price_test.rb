require 'minitest/autorun'

def split_price(price_text)
  case
  when price_text.nil? then ['','']
  when price_text.eql?('価格未定') then ['価格未定','']
  else
    price_text.scan(/([0-9０-９\s\.,\-]+)(万*円)\Z/).flatten
  end
end

describe 'split_price' do
  let(:manyen) { '110.0万円'}
  let(:yen) { '2015円'}
  let(:comma) { '1,123,456円'}
  let(:hyphen) { '110 - 120万円'}
  let(:zenkaku) { '２０１５円'}
  let(:jponly) { '価格未定'}
  let(:blank) { nil }

  it { split_price(manyen).must_equal ['110.0', '万円'] }
  it { split_price(yen).must_equal ['2015', '円'] }
  it { split_price(comma).must_equal ['1,123,456', '円'] }
  it { split_price(hyphen).must_equal ['110 - 120', '万円'] }
  it { split_price(zenkaku).must_equal ['２０１５', '円'] }
  it { split_price(jponly).must_equal ['価格未定', ''] }
  it { split_price(blank).must_equal ['', ''] }
end
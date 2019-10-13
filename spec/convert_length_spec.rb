require './lib/convert_length'

describe 'convert_length' do
  context 'convert_lengthのテスト' do
    it 'm→in' do
      expect(convert_length(1, from: :m, to: :in)).to eq(39.37)
    end

    it 'in→m' do
      expect(convert_length(15, from: :in, to: :m)).to eq(0.38)
    end

    it 'ft→m' do
      expect(convert_length(35000, from: :ft, to: :m)).to eq(10670.73)
    end
  end
end
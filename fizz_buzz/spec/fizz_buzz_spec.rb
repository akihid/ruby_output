require './fizz_buzz'

describe 'fizz_buzz' do
  context 'fizzが出力されるケース' do
    it '3の倍数ではfizzが表示される' do
      expect(fizz_buzz(3)).to eq('fizz')
      expect(fizz_buzz(6)).to eq('fizz')
    end
  end
  context 'buzzが出力されるケース' do
    it '5の倍数ではbuzzが表示される' do
      expect(fizz_buzz(5)).to eq('buzz')
      expect(fizz_buzz(10)).to eq('buzz')
    end
  end
  context 'fizzbuzzが出力されるケース' do
    it '15の倍数ではfizzbuzzが表示される' do
      expect(fizz_buzz(15)).to eq('fizzbuzz')
      expect(fizz_buzz(30)).to eq('fizzbuzz')
    end
  end
  context '数字が出力されるケース' do
    it '3の倍数でも5の倍数でもない場合数字が表示される' do
      expect(fizz_buzz(2)).to eq('2')
      expect(fizz_buzz(7)).to eq('7')
    end
  end
end
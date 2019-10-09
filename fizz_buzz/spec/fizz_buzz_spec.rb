require './fizz_buzz'

describe 'fizz_buzz' do
  context 'fizzが出力されるケース' do
    it '3の倍数ではfizzが表示される' do
      expect(fizz_buzz(3)).to eq('fizz')
      expect(fizz_buzz(6)).to eq('fizz')
    end
  end
end
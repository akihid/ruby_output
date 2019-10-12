require './lib/rgb'

describe 'rgb' do
  context '10進数を16進数に変換するケース' do
    it 'to_hexメソッド' do
      expect(to_hex(0, 0, 0)).to eq('#000000')
      expect(to_hex(255, 255, 255)).to eq('#ffffff')
      expect(to_hex(4, 60, 120)).to eq('#043c78')
    end
  end
  context '16進数を10進数に変換するケース' do
    it 'to_initsメソッド' do
      expect(to_inits('#000000')).to eq([0, 0, 0])
      expect(to_inits('#ffffff')).to eq([255, 255, 255])
      expect(to_inits('#043c78')).to eq([4, 60, 120])
    end
  end
end
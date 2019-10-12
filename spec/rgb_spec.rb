require './lib/rgb'

describe 'rgb' do
  context '10進数を16進数に変換するケース' do
    it 'to_hexメソッド' do
      expect(to_hex(0, 0, 0)).to eq('#000000')
      expect(to_hex(255, 255, 255)).to eq('#ffffff')
      expect(to_hex(4, 60, 120)).to eq('#043c78')
    end
  end

end
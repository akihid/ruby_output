require './lib/convert_hash_syntax'

describe 'convert_hash_syntax_spec' do
  context 'convert_hash_syntax_specのテスト' do
    old_syntax = <<~TEXT
      {
        :name => 'Alice',
        :age =>20,
        :gender => :female
      }
    TEXT
    expected = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
    it 'a' do
      expect(convert_hash_syntax(old_syntax)).to eq(expected)
    end
  end
end
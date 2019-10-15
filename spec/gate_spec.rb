require './lib/gate'
require './lib/ticket'

describe 'gatetest' do
  context 'gateのテスト' do

    before do
      @umeda = Gate.new(:umeda)
      @juso = Gate.new(:juso)
      @mikuni = Gate.new(:mikuni)
    end

    it '運賃が足りている場合、出場できる(梅田→十三' do
      ticket = Ticket.new(150)
      @umeda.enter(ticket)
      expect(@juso.exit(ticket)).to eq(true)
    end

    it '運賃が足りていない場合、出場できない（梅田→三国）' do
      ticket = Ticket.new(150)
      @umeda.enter(ticket)
      expect(@mikuni.exit(ticket)).to eq(false)
    end

    it '運賃がちょうどの場合、出場できる（梅田→三国）' do
      ticket = Ticket.new(190)
      @umeda.enter(ticket)
      expect(@mikuni.exit(ticket)).to eq(true)
    end

    it '運賃が足りている場合、出場できる(十三→三国）' do
      ticket = Ticket.new(190)
      @juso.enter(ticket)
      expect(@mikuni.exit(ticket)).to eq(true)
    end
  end
end
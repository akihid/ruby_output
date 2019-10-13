class BonusDrink

  def initialize(drinks, drank_count: 0, empty_count: 0, bonus_count: 0)
    @drinks = drinks            # ドリンクの数
    @drank_count = drank_count  # 飲んだドリンクの数
    @empty_count = empty_count  # 空の缶の数
    @bonus_count = bonus_count  # 追加で飲める数
  end

  def self.total_count_for(amount)
    BonusDrink.new(amount).drink_count
  end

  def drink_count
    until @drinks.zero?
      drink
      bonus_exchange
      puts '---'
    end
    @drank_count
  end

  private

  def drink
    @drank_count += @drinks
    @empty_count += @drinks
    @drinks = 0
    puts "drink #{@drank_count}"
  end

  def bonus_exchange
    @bonus_count, @empty_count = @empty_count.divmod(3)
    @drinks += @bonus_count
    puts "bonus #{@bonus_count}"
  end

end

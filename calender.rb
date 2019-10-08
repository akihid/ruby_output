# クラスを使って、今月の１日と月末の日付と曜日を求め、次のような形式でカレンダーを表示させてください

require 'date'

def calender(year: Date.today.year)

  month = Date.today.month

  # 表示に必要なもの定義
  first_wday = Date.new(year, month, 1).wday  # １日を曜日に変換(0~6)
  last_day = Date.new(year, month, -1).day    # 月の最終日
  header_month = Date.today.strftime("%B %Y") # 月、及び西暦
  week_array = %w(Su Mo Tu We Th Fr Sa)       # 曜日を配列で作成

  puts header_month
  puts week_array.join(" ")
  print "  "  * (first_wday + 1)

  (1..last_day).each_with_index do |day, i|   # 1~最終日まで繰り返し
    print day.to_s.rjust(2) + " "    
    puts if (first_wday + i+1)%7==0           # 曜日（数値）+index+1で改行
  end
  puts 
end


calender
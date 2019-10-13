def split_price(price_text)
  case
  when price_text.nil? then ['','']
  when price_text.eql?('価格未定') then ['価格未定','']
  else
    price_text.scan(/([0-9０-９\s\.,\-]+)(万*円)\Z/).flatten
  end
end

def summ_for_purchase(item)
  item.each_pair { | key, value | return key*value }
end
STDOUT.flush
item_price_quantity = {}
while true do
  purchases = gets.chomp
  if purchases == "stop"
    break
  else
  splitted_purchases = purchases.split
  name = splitted_purchases[0]
  price = splitted_purchases[1].to_i
  quantity = splitted_purchases[2].to_i
  item_price_quantity[name] = {price=>quantity}

  end

end
puts item_price_quantity  # вывод всего хеша
total_price = 0
item_price_quantity.each_pair do | key, value |
  puts "Итоговая сумма за товар #{key} - #{summ_for_purchase(value)}"  # итоговая сумма за каждый товар
  total_price += summ_for_purchase(value)
end
puts "Итоговая сумма покупок - #{total_price}"

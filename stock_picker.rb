def stock_picker (array)
  result = {:buy_price => 9999, :buy_index => -1, :sell_price => 0, :sell_index => 9999}
  profit = -1
  array.each_with_index{ |value, index|
    if((result[:sell_price] - value > profit) && index < result[:sell_index])
      result[:buy_price] = value
      result[:buy_index] = index
    end
    if((value - result[:buy_price] > profit) && index > result[:buy_index])
      result[:sell_price] = value
      result[:sell_index] = index
    end
    profit = result[:sell_price] - result[:buy_price]
  }
  return [result[:buy_index], result[:sell_index]]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
def stock_picker(prices)
  n = prices.size
  profits = Array.new(n, 0)
  sell_dates = Array.new(n, 0)

  for i in 0...(n - 1)
    max_profit = 0
    sell_day = i
    for j in (i + 1)...n
      profit = prices[j] - prices[i]
      if profit > max_profit
        max_profit = profit
        sell_day = j
      end
    end
    profits[i] = max_profit
    sell_dates[i] = sell_day
  end

  max_profit, buy_day = profits.each_with_index.max
  sell_day = sell_dates[buy_day]

  [buy_day, sell_day]
end

def stock_picker(stock_prices)
  highest_profit = 0
  buy_day = 0
  sell_day = 0
  
  # Get all combinations of buy and sell prices.
  stock_prices.combination(2) do |price|
    current_profit = price[1] - price[0]
    highest_profit = current_profit > highest_profit ? current_profit : highest_profit
    
    # Update the best days to buy and sell.
    if current_profit == highest_profit
      buy_day = stock_prices.index(price[0])
      sell_day = stock_prices.index(price[1])
    end
  end
  [buy_day, sell_day]
end

stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
p stock_picker(stock_prices)
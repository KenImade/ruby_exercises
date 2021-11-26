def stock_picker(prices)

   """
   This code loops through each of the stock prices, and compares it to the remaining stock prices
   and then returns the days that will give the maximum profit
   """

   profit = 0 
   for price_index in 0...prices.length
      for next_price_index in (price_index+1)...prices.length
         if prices[next_price_index] - prices[price_index] > profit
            profit = prices[next_price_index] - prices[price_index]
            buy_day = price_index 
            sell_day = next_price_index 
         end
      end
   end
   days = [buy_day, sell_day]
end

stock_picker([17,3,6,9,15,8,6,1,10])
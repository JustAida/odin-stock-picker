# odin-stock-picker
The #stock_picker method takes an array of stock prices, then it'll calculate using #combination method and return the array of the best day to buy and the best day to sell.

```ruby
p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
=> [1, 4]  # for a profit of $15 - $3 == $12
```
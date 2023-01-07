=begin
  > stock_picker([17,3,6,9,15,8,6,1,10])
  => [1,4]  # for a profit of $15 - $3 == $12

  - return array [buy index, sell index]
  DETERMINING BUY INDEX:
  day 0 profits: -14, -11, -8, -2, -9, -11, -16, -7
  day 1 profits: 3, 6, 12, 5, 3, -2, 7
  day 2 profits: 3, 9, 2, 0, -5, 4
]
  already I am seeing that the maximum profit is found on "day 1" by returning the max value of day 1 
  and comparing it to the max values of the other arrays

  DETERMINING THE SELL INDEX
  will be the INDEX of the highest number from the 2nd value of the given array till the end of the given array
  in this case [not included,3,6,9,15,8,6,1,10]

  Question: how to generate a nested array contining the values of all profits

  Attempt
  [
    [index1 - index0, index2 - index0, index 3 - index0 ...]
    [index2 - index1, index3 - index1, index 4 - index1 ...]
  ]

=end

def stock_picker (stock)
  determine_buy_day = stock.slice(0, stock.length)
  determine_sell_day = stock.slice(1, stock.length)
  mapped_values = [];

  while (determine_buy_day.length > 0)
    inside_array = []
    index = 1

    while (index < determine_buy_day.length)
      inside_array.push(determine_buy_day[index] - determine_buy_day[0])
      index += 1
    end

    mapped_values.push(inside_array)
    determine_buy_day.shift()
  end

  mapped_values.pop #remove the extra empty array at the end

  top_profits_per_day = mapped_values.map do | arr |
    arr.max
  end

  highest_profit = top_profits_per_day.max

  day_of_highest_profit = top_profits_per_day.index(highest_profit)
  day_of_sell = stock.index(determine_sell_day.max)

  [day_of_highest_profit, day_of_sell]
end

stock_picker([17,3,6,9,15,8,6,1,10])
require 'rake'
task :update => :environment do
  require 'yahoo-finance'

  stock_list = Array.new
  Stock.all.each do |stock|
    stock_list.push(stock.symbol)
  end

  yahoo = YahooFinance::Client.new
  close = yahoo.quotes(stock_list, [:previous_close])

  p close
  p close

  stock_list.each_with_index do |stock, index|
    current = Stock.find_by(symbol: stock)
    current.past_prices.push(current.price)
    current.price = close[index].previous_close
    current.save
  end
end

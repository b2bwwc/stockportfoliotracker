class AddPastPricesToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :past_prices, :integer, array: true, :default => []
  end
end

class DropIndexFundsTable < ActiveRecord::Migration
  def change
    drop_table :indexfunds
  end
end

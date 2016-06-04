class Connection < ActiveRecord::Base
  belongs_to :indexfund
  belongs_to :portfolio
end

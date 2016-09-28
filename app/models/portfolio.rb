class Portfolio < ActiveRecord::Base
  belongs_to :user
  has_many :portstocks
  has_many :stocks, through: :portstocks

end

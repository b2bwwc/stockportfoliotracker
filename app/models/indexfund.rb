class Indexfund < ActiveRecord::Base
  belongs_to :admin
  has_many :connections
  has_many :portfolios, through: :connections
  has_many :stocks, through: :portfolios
end

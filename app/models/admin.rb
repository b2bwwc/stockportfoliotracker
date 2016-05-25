class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :indexfunds
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

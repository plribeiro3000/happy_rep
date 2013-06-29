class Loan < ActiveRecord::Base
  attr_accessible :dweller, :payment_date, :realization_date, :value

  validates :dweller, :presence => true
  validates :realization_date, :presence => true
  validates :value, :presence => true
end
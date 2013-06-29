class PersonalBill < ActiveRecord::Base
  attr_accessible :description, :name, :payment_date, :value

  validates :name, :presence => true
  validates :value, :presence => true
  validates :payment_date, :presence => true
end
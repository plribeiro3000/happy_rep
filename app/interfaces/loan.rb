class Loan < ActiveRecord::Base
  attr_accessible :dweller, :payment_date, :realization_date, :value

  validates :dweller, :presence => true
  validates :realization_date, :presence => true
  validates :value, :presence => true

  scope :by_dweller, -> dweller { where(:dweller => dweller) if dweller.present? }
  scope :by_realization_date, -> date { where(:realization_date => date) if date.present? }
end
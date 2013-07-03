class Restitution < ActiveRecord::Base
  attr_accessible :date, :item, :problem, :solution, :value, :bill_attributes

  has_one :bill

  validates :item, :presence => true
  validates :date, :presence => true

  accepts_nested_attributes_for :bill

  scope :by_item, -> item { where(:item => item) if item.present? }
  scope :by_date, -> date { where(:date => date) if date.present? }
end
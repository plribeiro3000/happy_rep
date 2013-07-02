class Restitution < ActiveRecord::Base
  attr_accessible :date, :item, :problem, :solution, :value

  validates :item, :presence => true
  validates :date, :presence => true
  validates :value, :presence => true

  scope :by_item, -> item { where(:item => item) if item.present? }
  scope :by_date, -> date { where(:date => date) if date.present? }
end
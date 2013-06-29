class Restitution < ActiveRecord::Base
  attr_accessible :date, :item, :problem, :solution, :value

  validates :item, :presence => true
  validates :date, :presence => true
  validates :value, :presence => true
end
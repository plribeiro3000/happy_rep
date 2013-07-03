class Task < ActiveRecord::Base
  attr_accessible :description, :name, :start_date

  belongs_to :profile

  validates :name, :presence => true
  validates :description, :presence => true

  scope :by_name, -> name { where(:name => name) if name.present? }
  scope :by_start_date, -> date { where(:start_date => date) if date.present? }
end
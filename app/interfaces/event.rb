class Event < ActiveRecord::Base
  attr_accessible :capacity, :event_date, :name, :profit

  validates :capacity, :presence => true
  validates :name, :presence => true

  scope :by_name, -> name { where(:name => name) if name.present? }
  scope :by_event_date, -> date { where(:event_date => date) if date.present? }
end
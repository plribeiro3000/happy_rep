class Event < ActiveRecord::Base
  attr_accessible :capacity, :event_date, :name, :profit

  validates :capacity, :presence => true
  validates :name, :presence => true
end
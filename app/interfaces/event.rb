class Event < ActiveRecord::Base
  attr_accessible :capacity, :event_date, :name, :profit

  validates_presence_of :name, :capacity
end

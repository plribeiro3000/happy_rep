class Event < ActiveRecord::Base
  attr_accessible :capacity, :event_date, :name, :profit

  validates :capacity, :presence => true
  validates :name, :presence => true
  validates :profit, :presence => true

  scope :by_name, -> name { where(:name => name) if name.present? }
  scope :by_event_date, -> date { where(:event_date => date.to_date) if date.present? }
  scope :this_month, ->{ where("event_date > ? and event_date < ?", Date.today.beginning_of_month, Date.today.end_of_month) }
end
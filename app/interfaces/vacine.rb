class Vacine < ActiveRecord::Base
  attr_accessible :event_date, :animal_id

  belongs_to :animal

  validates :event_date, :presence => true
  validates :animal, :presence => true
end
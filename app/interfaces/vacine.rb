class Vacine < ActiveRecord::Base
  attr_accessible :event_date

  validates :event_date, :presence => true

  belongs_to :animal
end
class Vacine < ActiveRecord::Base
  attr_accessible :event_date

  belongs_to :animal
end
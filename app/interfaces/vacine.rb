class Vacine < ActiveRecord::Base
  attr_accessible :event_date

  has_one :animal
end

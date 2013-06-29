class PersonalTask < ActiveRecord::Base
  attr_accessible :description, :name, :start_date

  validates :name, :presence => true
  validates :description, :presence => true
end

class Animal < ActiveRecord::Base
  attr_accessible :birth_date, :name, :race, :species

  has_many :vacines

  validates :name, :presence => true
  validates :race, :presence => true
  validates :species, :presence => true
  validates :birth_date, :presence => true

  scope :by_name, -> name { where(:name => name) if name.present? }
  scope :by_race, -> race { where(:race => race) if race.present? }
end
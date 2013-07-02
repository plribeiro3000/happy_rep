class Animal < ActiveRecord::Base
  attr_accessible :birth_date, :name, :race, :species

  has_many :vacines

  validate :name, :presence => true
  validate :race, :presence => true
  validate :species, :presence => true
  validate :birth_date, :presence => true

  scope :by_name, -> name { where(:name => name) if name.present? }
  scope :by_race, -> race { where(:race => race) if race.present? }
end
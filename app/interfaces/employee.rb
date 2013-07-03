class Employee < ActiveRecord::Base
  attr_accessible :address, :admission_date, :demission_date, :name, :phone, :register, :salary, :work_card

  validates :name, :presence => true
  validates :address, :presence => true
  validates :register, :presence => true
  validates :admission_date, :presence => true
  validates :salary, :presence => true
  validates :work_card, :presence => true

  scope :by_name, -> name { where(:name => name) if name.present? }
  scope :by_admission_date, -> date { where(:admission_date => date.to_date) if date.present? }
end
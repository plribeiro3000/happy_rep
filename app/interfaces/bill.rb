class Bill < ActiveRecord::Base
  attr_accessible :description, :expiration_date, :interest, :kind, :payment_date, :penalty, :value, :profile_id

  validates :description, :presence => true
  validates :expiration_date, :presence => true
  validates :kind, :presence => true
  validates :value, :presence => true

  belongs_to :profile
end
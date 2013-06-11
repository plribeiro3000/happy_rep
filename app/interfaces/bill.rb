class Bill < ActiveRecord::Base
  attr_accessible :expiration_date, :interest, :kind, :payment_date, :penalty, :value, :profile_id

  validates :expiration_date, :presence => true
  validates :kind, :presence => true
  validates :value, :presence => true

  belongs_to :profile
end
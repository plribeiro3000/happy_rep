class Bill < ActiveRecord::Base
  attr_accessible :description, :expiration_date, :interest, :kind, :payment_date, :penalty, :value, :profile_id

  KIND_OPTS = [["Recorrente", "recorrente"], ["Nao Recorrente", "nao-recorrente"]]

  validates :description, :presence => true
  validates :expiration_date, :presence => true
  validates :kind, :presence => true
  validates :value, :presence => true

  belongs_to :profile
  belongs_to :restitution

  scope :by_expiration_date, -> date { where(:expiration_date => date.to_date) if date.present? }
  scope :by_payment_date, -> date { where(:payment_date => date.to_date) if date.present? }
end
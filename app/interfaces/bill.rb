class Bill < ActiveRecord::Base
  attr_accessible :expiration_date, :interest, :kind, :pay_date, :penalty, :value

  validates_presence_of :expiration_date, :kind, :value
end

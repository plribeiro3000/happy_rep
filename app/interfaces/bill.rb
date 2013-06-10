class Bill < ActiveRecord::Base
  attr_accessible :expiration_date, :interest, :kind, :pay_date, :penalty, :responsible, :value
end

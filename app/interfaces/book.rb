class Book < ActiveRecord::Base
  attr_accessible :author, :edition, :name

  validates_presence_of :author, :name

  has_one :profile
end

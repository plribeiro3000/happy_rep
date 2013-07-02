class Book < ActiveRecord::Base
  attr_accessible :author, :edition, :name, :profile_id

  validates :author, :presence => true
  validates :name, :presence => true

  belongs_to :profile

  scope :by_name, -> name { where(:name => name) if name.present? }
  scope :by_author, -> author { where(:author => author) if author.present? }
end
class Profile < ActiveRecord::Base
  attr_accessible :address, :admission, :bio, :birthday, :college, :course, :cpf, :hometown, :name, :phone, :role

  belongs_to :user
  has_many :bill

  validates :name, :presence => true
  validates :birthday, :presence => true
  validates :cpf, :presence => true, :cpf => true
  validates :phone, :presence => true
  validates :role, :presence => { :in => %w(admin resident former aggregate) }
end
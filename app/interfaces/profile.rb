class Profile < ActiveRecord::Base
  attr_accessible :address, :admission, :bio, :birthday, :college, :course, :cpf, :hometown, :name, :phone

  belongs_to :user
  has_many :books
  has_many :bills
  has_many :tasks

  validates :name, :presence => true
  validates :birthday, :presence => true
  validates :cpf, :presence => true, :cpf => true
  validates :phone, :presence => true
  validates :role, :presence => { :in => %w(admin resident former aggregate) }

  scope :all_birthdays, -> { where(:birthday => Date.today) }
end
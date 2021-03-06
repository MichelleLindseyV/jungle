class User < ActiveRecord::Base

  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: { case_sensitive: true }, presence: true
  validates :password, presence: true, length: {minimum: 5}, confirmation: true
  
end

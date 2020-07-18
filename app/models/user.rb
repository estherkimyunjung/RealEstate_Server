class User < ApplicationRecord
  has_one :client
  has_one :agent
  
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }
  validates :username, :role, :email, presence: true
end  

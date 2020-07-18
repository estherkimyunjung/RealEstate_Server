class Agent < ApplicationRecord
  belongs_to :user
  belongs_to :company
  has_many :properties
  has_many :appointments
  has_many :clinets, through: :appointments

  validates :license, presence: true
end

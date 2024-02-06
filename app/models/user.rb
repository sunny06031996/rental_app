class User < ApplicationRecord

  enum role: { user: 0, admin_user: 1 }
  validates :role, presence: true 
  devise :database_authenticatable, :registerable,
          :validatable
  has_many :favorites, dependent: :destroy
  has_many :properties, dependent: :destroy
  has_many :favorite_properties, through: :favorites, source: :property
end


class User < ApplicationRecord

  include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :validatable,
  :recoverable, :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :categories
  has_many :items
end

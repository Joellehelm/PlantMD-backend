class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :recoverable, :validatable, :rememberable, :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :favorites, dependent: :destroy       
  has_many :notes, dependent: :destroy       
end

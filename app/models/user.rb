class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :user_information, dependent: :destroy
  has_many :checkins, dependent: :destroy
  has_many :redemptions, dependent: :destroy
  has_many :posts, dependent: :destroy
end

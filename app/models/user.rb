class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tickets, dependent: :nullify

  # Image Attachement
  mount_uploader :avatar, AvatarUploader

  # Validations
  validates :name, presence: true
end

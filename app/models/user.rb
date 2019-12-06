class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  # Direct associations

  has_many   :workouts,
             :dependent => :nullify

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

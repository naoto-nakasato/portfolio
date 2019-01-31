class Man < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reseves

    # def self.find_for_oauth(auth)
    #   man = Man.where(uid: auth.uid, provider: auth.provider).first
    #
    #   unless man
    #     man = Man.create(
    #       uid:      auth.uid,
    #       provider: auth.provider,
    #       email:    auth.info.email,
    #       password: Devise.friendly_token[0, 20]
    #       )
    #   end
    #
    #   man
    # end
    mount_uploader :image, ImageUploader
end

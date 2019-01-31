class Woman < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

    def self.find_for_oauth(auth)
      woman = Woman.where(uid: auth.uid, provider: auth.provider).first

      unless woman
        woman = Woman.create(
          uid:      auth.uid,
          provider: auth.provider,
          email:    auth.info.email,
          password: Devise.friendly_token[0, 20]
         )
      end

      woman
    end
    mount_uploader :image, ImageUploader
end

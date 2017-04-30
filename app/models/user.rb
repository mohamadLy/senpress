class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_one :profile
         has_attached_file :avatar,
         styles: { medium: "300x300>", thumb: "100x100>" },
#         default_url: "/images/:style/missing.png"
         default_url: "/images/default_avatar_:me-flat.png"

 validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

 belongs_to :plan
end

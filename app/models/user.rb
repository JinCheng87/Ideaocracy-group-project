class User < ApplicationRecord
  has_many :ideas
  has_many :suggestions, through: :ideas
  has_many :comments, through: :suggestions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable, 
         :omniauthable, :omniauth_providers => [:google]

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.username = auth.info.nickname
    end
  end

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user_attributes = params
        user.valid?     
    else
      super
    end
  end

  def password_required?
    super && provider.blank
  end

  def update_with_password(params, *options)
    if encrypted_password.blank?
      update_attributes(params, *options)  
    else
      super
    end
  end
end

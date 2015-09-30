class User < ActiveRecord::Base
  belongs_to :language
  has_one :user_profile
  has_many :user_passwords

  has_many :login_attempts
end

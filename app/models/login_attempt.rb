class LoginAttempt < ActiveRecord::Base
  belongs_to :user

  validates :ip_address, presence: true, length: { minimum: 7, maximum: 15 }
  validates :user_agent, presence: true, length: { maximum: 255 }

end

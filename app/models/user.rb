class User < ActiveRecord::Base
  MAXIMUM_FAILED_ATTEMPTS = 5

  belongs_to :language
  has_one :user_profile
  has_many :user_passwords

  has_many :login_attempts

  validates :username, presence: true, uniqueness: true,
                       length: { minimum: 6, maximum: 20 }

  validates :email, presence: true, uniqueness: true,
                    length: { maximum: 50 }

  validates_uniqueness_of :confirmation_token


  before_update lock_user

  private

  def lock_user
    self.locked = true unless self.failed_attemps < MAXIMUM_FAILED_ATTEMPTS
    # TODO Define an unlock user policy (email, time, both, ...Support Dept.)
  end
end

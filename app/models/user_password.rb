class UserPassword < ActiveRecord::Base
  belongs_to :user, touch: true
  # belongs_to :service

  validates :password, presence: true, length: { minimum: 8, maximum: 25 }
end

class PasswordQuestion < ActiveRecord::Base
  has_many :user_passwords
end

class Language < ActiveRecord::Base
  has_many :users

  validates :locale, presence: true, uniqueness: true,
                     length: {minimum: 2, maximum: 10}

  validates :language, presence: true, length: { maximum: 20 }

end

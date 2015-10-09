class Role < ActiveRecord::Base
  belongs_to :user, :foreign_key => :created_by

  has_and_belongs_to_many :permissions

  validates :label, presence: true,
                    uniqueness: true,
                    length: { maximum: 10 }

  validates_length_of :description, maximum: 30
end

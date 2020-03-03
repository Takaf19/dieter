class Group < ApplicationRecord
  belongs_to :user
  has_many :messages

  validates :name, presence: true, 
            uniqueness: true,
            length: { maximum: 10 }
end

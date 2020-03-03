class Status < ApplicationRecord
  belongs_to :user

  validates :weight, :gole, presence: true,
            numericality: { only_integer: true, greater_than: 10, less_than: 300 }
  validates :rule, presence: true,
            length: { maximum: 64 }

end

class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_many :comments
  # imageカラムが空の場合、messageカラムも空であれば保存しない
  validates :message, presence: true, unless: :image?
end

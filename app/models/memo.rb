class Memo < ApplicationRecord
  validates :content, length: { maximum: 140}
  validates :title, presence: true
end

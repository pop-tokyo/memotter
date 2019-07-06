class Memo < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :stocks
  has_many :likes
end

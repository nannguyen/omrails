class Tweet < ApplicationRecord
  belongs_to :user
  validates :content, presence: true
  validates :user, presence: true
  validates :username, presence: true, uniqueness: true, length: { minimum: 6 }
  validates :name, presence: true
end

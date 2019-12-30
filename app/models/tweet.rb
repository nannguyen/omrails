class Tweet < ApplicationRecord
  belongs_to :user
  validates :content, presence: true
  validates :user, presence: true
  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

class Eventcuration < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 1000 }
  mount_uploader :picture, PictureUploader
end

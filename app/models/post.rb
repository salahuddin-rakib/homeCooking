class Post < ApplicationRecord
  validates :description, :image_url, presence: true
  validates :title, uniqueness: true
  validates :title, presence: true, length: {minimum: 5}
  validates :image_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }
end

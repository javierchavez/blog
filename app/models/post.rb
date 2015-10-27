class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true
  scope :desc, -> { order(created_at: :desc) }
end

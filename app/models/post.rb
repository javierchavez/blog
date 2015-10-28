class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true
  validates :user_id, presence: true
  scope :desc, -> { order(created_at: :desc) }
end

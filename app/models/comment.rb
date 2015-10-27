class Comment < ActiveRecord::Base
  belongs_to :post
  validates :body, presence: true
  validates :post_id, presence: true
  scope :desc, -> { order(created_at: :desc) }
end

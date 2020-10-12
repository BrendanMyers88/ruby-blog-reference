class Post < ActiveRecord::Base
  belongs_to :author
  validates :author_id, :title, :body, presence: true
end

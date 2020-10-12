class Author < ActiveRecord::Base
  has_many :posts
  validates :name, :position, presence: true
end

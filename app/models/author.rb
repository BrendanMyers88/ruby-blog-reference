class Author < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  validates :name, :position, presence: true
end

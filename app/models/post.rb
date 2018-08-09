class Post < ApplicationRecord
  has_many :comments

  validates :title, :body, presence: true
  validates :title, length: {minimum: 10, maximum: 30, message: "must be between 10 and 30 chars"}
  validates :author, uniqueness: true
end

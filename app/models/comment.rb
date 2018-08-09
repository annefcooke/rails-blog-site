class Comment < ApplicationRecord
  belongs_to :post
    validates :name, presence: true, length: {minimum: 5, maximum: 20, message: "must be between 5 and 20 chars"}
    validates :content, presence: true, length: {maximum: 255}

end

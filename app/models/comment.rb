class Comment < ActiveRecord::Base
  belongs_to :student
  validates :body, length: { minimum: 15 }
end

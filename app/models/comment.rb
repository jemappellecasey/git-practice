class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  
  validates :content, presence: true, leignth: { minimum: 4, maximimum: 999}
end

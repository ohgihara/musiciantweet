class Comment < ApplicationRecord
  validates :text, presence: true
  
  belongs_to :musician
  belongs_to :user
end

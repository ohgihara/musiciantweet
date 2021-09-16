class Comment < ApplicationRecord
  belongs_to :musician
  belongs_to :user
end

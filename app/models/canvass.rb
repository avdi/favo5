class Canvass < ApplicationRecord
  has_many :votes
  has_many :candidates
end

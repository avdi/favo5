class Vote < ApplicationRecord
  belongs_to :candidate
  belongs_to :primary_quality
  belongs_to :secondary_quality
  belongs_to :tertiary_quality
end

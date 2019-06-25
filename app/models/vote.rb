class Vote < ApplicationRecord
  attr_accessor :candidate_name, :priority_1, :priority_2, :priority_3
  belongs_to :candidate
  belongs_to :canvass
end

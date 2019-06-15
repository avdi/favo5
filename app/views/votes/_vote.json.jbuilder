json.extract! vote, :id, :candidate_id, :primary_quality_id, :secondary_quality_id, :tertiary_quality_id, :comment, :created_at, :updated_at
json.url vote_url(vote, format: :json)

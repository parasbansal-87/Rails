json.extract! review, :id, :rating, :Comment, :created_at, :updated_at
json.url review_url(review, format: :json)

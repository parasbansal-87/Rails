class Review < ApplicationRecord
	belongs_to :user
	belongs_to :movie

	validates_uniqueness_of :user_id, scope: [:movie_id], message: 'One user can add only 1 review in a movie!'
end

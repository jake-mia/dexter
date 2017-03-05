class Challenge < ApplicationRecord
has_many :steps
has_many :user_challenges
end

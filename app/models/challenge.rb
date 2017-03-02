class Challenge < ApplicationRecord
has_many :steps
has_many :UserChallenges
end

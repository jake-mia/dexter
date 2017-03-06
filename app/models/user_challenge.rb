class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge

after_create :build_steps

def build_steps
  Step.create(challenge_id: 1, name: "Task 1", description: "task 1 desc info", completed: false, complete_by: DateTime.strptime("03/07/2017 8:00", "%m/%d/%Y %H:%M"))
  Step.create(challenge_id: 1, name: "Task 2", description: "task 2 desc info", completed: false, complete_by: DateTime.strptime("03/07/2017 8:00", "%m/%d/%Y %H:%M"))
  Step.create(challenge_id: 1, name: "Task 3", description: "task 3 desc info", completed: false, complete_by: DateTime.strptime("03/07/2017 8:00", "%m/%d/%Y %H:%M"))
end



end

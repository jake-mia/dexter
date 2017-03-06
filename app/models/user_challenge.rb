class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge

after_create :build_steps

def build_steps
  var = UserChallenge.last
  var.challenge_id
  var.user_id

if challenge_id == 1
  Step.create(challenge_id: 1, name: "chall 1", description: "task 1 desc info", completed: false, complete_by: DateTime.strptime("03/07/2017 8:00", "%m/%d/%Y %H:%M"))
  Step.create(challenge_id: 1, name: "cahll 1", description: "task 2 desc info", completed: false, complete_by: DateTime.strptime("03/07/2017 8:00", "%m/%d/%Y %H:%M"))
  Step.create(challenge_id: 1, name: "chall 1", description: "task 3 desc info", completed: false, complete_by: DateTime.strptime("03/07/2017 8:00", "%m/%d/%Y %H:%M"))

elsif challenge_id == 2
  Step.create(challenge_id: 2, name: "chall 2", description: "task 1 desc info", completed: false, complete_by: DateTime.strptime("03/07/2017 8:00", "%m/%d/%Y %H:%M"))
  Step.create(challenge_id: 2, name: "chall 2", description: "task 2 desc info", completed: false, complete_by: DateTime.strptime("03/07/2017 8:00", "%m/%d/%Y %H:%M"))
  Step.create(challenge_id: 2, name: "chall 2", description: "task 3 desc info", completed: false, complete_by: DateTime.strptime("03/07/2017 8:00", "%m/%d/%Y %H:%M"))

elsif challenge_id == 3
  Step.create(challenge_id: 3, name: "Task 1", description: "task 1 desc info", completed: false, complete_by: DateTime.strptime("03/07/2017 8:00", "%m/%d/%Y %H:%M"))
  Step.create(challenge_id: 3, name: "Task 2", description: "task 2 desc info", completed: false, complete_by: DateTime.strptime("03/07/2017 8:00", "%m/%d/%Y %H:%M"))
  Step.create(challenge_id: 3, name: "Task 3", description: "task 3 desc info", completed: false, complete_by: DateTime.strptime("03/07/2017 8:00", "%m/%d/%Y %H:%M"))

end
end

end

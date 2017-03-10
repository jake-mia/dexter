class AddStepToUserChallenge < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_challenges, :step, foreign_key: true
    add_column :user_challenges, :complete_by, :datetime
    add_column :user_challenges, :completed, :datetime
  end
end

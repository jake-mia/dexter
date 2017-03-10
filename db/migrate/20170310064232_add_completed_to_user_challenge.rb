class AddCompletedToUserChallenge < ActiveRecord::Migration[5.0]
  def change
    add_column :user_challenges, :completed, :boolean
  end
end

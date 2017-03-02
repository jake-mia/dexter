class CreateUserChallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :user_challenges do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :challenge, foreign_key: true
      t.integer :user_id
      t.integer :challenge_id

      t.timestamps
    end
  end
end

class CreateCheckins < ActiveRecord::Migration[5.0]
  def change
    create_table :checkins do |t|
      t.belongs_to :user_challenge, foreign_key: true
      t.integer :user_challenge_id
      t.boolean :completed

      t.timestamps
    end
  end
end

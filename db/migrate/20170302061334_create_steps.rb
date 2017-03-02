class CreateSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :steps do |t|
      t.belongs_to :Challenge, foreign_key: true
      t.string :name
      t.boolean :completed

      t.timestamps
    end
  end
end

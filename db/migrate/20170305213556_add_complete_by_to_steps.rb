class AddCompleteByToSteps < ActiveRecord::Migration[5.0]
  def change
    add_column :steps, :complete_by, :datetime
  end
end

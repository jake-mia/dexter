class AddTmsgToStep < ActiveRecord::Migration[5.0]
  def change
    add_column :steps, :Tmsg, :string
  end
end

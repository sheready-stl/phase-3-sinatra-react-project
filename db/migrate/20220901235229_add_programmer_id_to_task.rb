class AddProgrammerIdToTask < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :programmer_id, :integer
  end
end

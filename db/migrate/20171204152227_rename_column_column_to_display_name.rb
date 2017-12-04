class RenameColumnColumnToDisplayName < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :column, :display_name
  end
end

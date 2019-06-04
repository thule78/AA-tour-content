class RenameRootToComfort < ActiveRecord::Migration[5.2]
  def change
    rename_column :contents, :root, :comfort
  end
end

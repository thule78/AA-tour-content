class AddEditorToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :editor, :boolean
  end
end

class AddEditorToContent < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :editor, :boolean
  end
end

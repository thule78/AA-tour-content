class AddNoteColumnToContent < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :note, :text
  end
end

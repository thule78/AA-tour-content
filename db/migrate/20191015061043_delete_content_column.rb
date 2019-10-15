class DeleteContentColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :contents, :content_modifi
  end
end

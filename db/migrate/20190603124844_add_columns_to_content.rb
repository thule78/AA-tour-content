class AddColumnsToContent < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :title, :string
    add_column :contents, :source, :string
    add_column :contents, :status, :string
    add_column :contents, :root, :string
    add_column :contents, :content_original, :text
    add_column :contents, :content_modifi, :text
  end
end

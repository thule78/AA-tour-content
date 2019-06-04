class AddMoreColumnsToContent < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :country, :string
    add_column :contents, :destination, :string
    add_column :contents, :activity, :string
    add_column :contents, :length, :string
  end
end

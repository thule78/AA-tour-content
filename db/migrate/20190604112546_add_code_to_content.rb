class AddCodeToContent < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :code, :string
    add_column :contents, :provider, :string
    add_column :contents, :start_finish, :string
    add_column :contents, :style, :string
    add_column :contents, :theme, :string
    add_column :contents, :similar_trip, :string
  end
end

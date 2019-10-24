class AddProofreaderToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :proofread, :boolean
  end
end

class SetDefaultForStatus < ActiveRecord::Migration[5.2]
  def change
    change_column_default :contents, :status, 'editing'
  end
end

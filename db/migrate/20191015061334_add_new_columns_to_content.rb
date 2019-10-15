class AddNewColumnsToContent < ActiveRecord::Migration[5.2]
  def change
    rename_column :contents, :content_original, :itinerary
    rename_column :contents, :activity, :activity1
    rename_column :contents, :similar_trip, :related_trips
    add_column :contents, :new_title, :string
    add_column :contents, :summary, :text
    add_column :contents, :highlight, :text
    add_column :contents, :activity2, :string
    add_column :contents, :go_next, :string
  end
end

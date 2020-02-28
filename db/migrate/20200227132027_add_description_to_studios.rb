class AddDescriptionToStudios < ActiveRecord::Migration[6.0]
  def change
    add_column :studios, :description, :text
  end
end

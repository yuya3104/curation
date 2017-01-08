class AddTitleToEventcuration < ActiveRecord::Migration
  def change
    add_column :eventcurations, :title, :string
  end
end

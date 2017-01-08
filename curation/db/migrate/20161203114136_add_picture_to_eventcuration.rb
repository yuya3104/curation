class AddImageUrlToEventcuration < ActiveRecord::Migration
  def change
    add_column :eventcurations, :picture, :string
  end
end

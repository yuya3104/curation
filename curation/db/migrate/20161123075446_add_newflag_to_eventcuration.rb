class AddNewflagToEventcuration < ActiveRecord::Migration
  def change
    add_column :eventcurations, :newflag, :integer
  end
end

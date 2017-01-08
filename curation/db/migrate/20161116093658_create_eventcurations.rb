class CreateEventcurations < ActiveRecord::Migration
  def change
    create_table :eventcurations do |t|
      t.references :user, index: true, foreign_key: true
      t.date :date
      t.text :content
      t.integer :viewpoint
      t.integer :point

      t.timestamps null: false
      t.index [:user_id, :created_at]
    end
  end
end

class CreateEditors < ActiveRecord::Migration
  def change
    create_table :editors do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
